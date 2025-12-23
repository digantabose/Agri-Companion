import re
import os
import json
import requests
import urllib.parse
import time
from concurrent.futures import ThreadPoolExecutor

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
ASSETS_DIR = r'g:\Antigravity\agri_disease_app\assets\images'

def download_one(d, plant_name):
    # Construct prompt
    disease_name = d['name']
    d_id = d['id']
    prompt = f"realistic close up photo of {plant_name} plant affected by {disease_name} disease leaves or fruit high quality"
    encoded_prompt = urllib.parse.quote(prompt)
    url = f"https://image.pollinations.ai/prompt/{encoded_prompt}"
    
    filename = f"disease_{d_id}_0.jpg"
    filepath = os.path.join(ASSETS_DIR, filename)
    
    print(f"Starting {d_id}...")
    try:
        resp = requests.get(url, timeout=20)
        if resp.status_code == 200:
            with open(filepath, 'wb') as f:
                f.write(resp.content)
            print(f"Downloaded {d_id}")
            return d_id, filename
        else:
            print(f"Failed {d_id}: {resp.status_code}")
            return None
    except Exception as e:
        print(f"Error {d_id}: {e}")
        return None

def main():
    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    plants_match = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    diseases_match = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)

    if not plants_match or not diseases_match:
        print("Json parse error")
        return

    plants = json.loads(plants_match.group(1))
    diseases = json.loads(diseases_match.group(1))
    plant_map = {p['id']: p['name'] for p in plants}

    # Find targets: placeholders or newly added
    # We'll just target d21-d60 explicitly plus check others
    # Or just check for 'placeholder.jpg'
    targets = []
    for d in diseases:
        images = d.get('images', [])
        if images and 'placeholder.jpg' in images[0]:
            targets.append(d)
    
    print(f"Targeting {len(targets)} diseases")

    # Concurrent download
    results = {}
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = []
        for d in targets:
            p_name = plant_map.get(d['plantId'], "Plant")
            futures.append(executor.submit(download_one, d, p_name))
        
        for future in futures:
            res = future.result()
            if res:
                did, fname = res
                results[did] = fname

    # Update memory
    if results:
        for d in diseases:
            if d['id'] in results:
                d['images'] = [f"assets/images/{results[d['id']]}"]
        
        new_json_str = json.dumps(diseases, indent=4)
        new_block = f"static const String diseasesJson = '''\n{new_json_str}\n''';"
        final_content = re.sub(r'static const String diseasesJson\s*=\s*\'\'\'.*?\'\'\';', new_block, content, flags=re.DOTALL)
        
        with open(SEED_DATA_PATH, 'w', encoding='utf-8') as f:
            f.write(final_content)
        print("Updated seed_data.dart with new images")
    else:
        print("No updates made")

if __name__ == '__main__':
    main()
