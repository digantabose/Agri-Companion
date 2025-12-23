import re
import os
import json
import requests
import urllib.parse
import time
import random

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
ASSETS_DIR = r'g:\Antigravity\agri_disease_app\assets\images'

def download_file(url, filepath):
    try:
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        }
        resp = requests.get(url, headers=headers, timeout=30)
        if resp.status_code == 200:
            with open(filepath, 'wb') as f:
                f.write(resp.content)
            return True
        return False
    except Exception as e:
        print(f"Error downloading {url}: {e}")
        return False

def get_pollinations_url(plant, disease):
    prompt = f"realistic close up photo of {plant} plant affected by {disease} disease leaves or fruit high quality"
    encoded = urllib.parse.quote(prompt)
    # Add random seed to avoid caching issues if retrying
    seed = random.randint(0, 10000)
    return f"https://image.pollinations.ai/prompt/{encoded}?noshare&seed={seed}"

def get_loremflickr_url(plant, disease):
    # sanitize keywords
    k1 = plant.split(' ')[0]
    k2 = "disease" # generic fallback keyword
    return f"https://loremflickr.com/800/600/{k1},{k2}/all"

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

    targets = []
    for d in diseases:
        images = d.get('images', [])
        # Check if it's a placeholder OR if the file doesn't exist locally
        current_path = images[0]
        is_placeholder = 'placeholder.jpg' in current_path
        
        # Parse filename from asset path 'assets/images/filename.jpg'
        filename = current_path.split('/')[-1]
        filepath = os.path.join(ASSETS_DIR, filename)
        
        if is_placeholder or (not os.path.exists(filepath) and not filename.startswith('disease_d')):
            # Note: Checking startswith to avoid re-downloading if we already fixed it but file is missing? 
            # Actually, let's just trust 'placeholder.jpg' check for now as primary signal.
            targets.append(d)
        
        # Also re-check if it claims to be downloaded (disease_dXX_0.jpg) but file is 0 bytes or missing?
        if not is_placeholder and current_path.startswith('assets/images/disease_d'):
            if not os.path.exists(filepath):
                 targets.append(d)


    print(f"Targeting {len(targets)} diseases")
    
    updates = 0
    
    for d in targets:
        plant_name = plant_map.get(d['plantId'], "Plant")
        disease_name = d['name']
        d_id = d['id']
        filename = f"disease_{d_id}_0.jpg"
        filepath = os.path.join(ASSETS_DIR, filename)
        
        print(f"Processing {d_id}: {plant_name} - {disease_name}")
        
        # Strategy 1: Pollinations (High Quality)
        success = False
        url = get_pollinations_url(plant_name, disease_name)
        print(f"  Attempting Pollinations...")
        if download_file(url, filepath):
            print("  -> Success (Pollinations)")
            success = True
        else:
            print("  -> Failed. Waiting 5s...")
            time.sleep(5)
            # Retry once? Or switch to fallback
            
            # Strategy 2: LoremFlickr (Fallback)
            print(f"  Attempting LoremFlickr fallback...")
            url = get_loremflickr_url(plant_name, disease_name)
            if download_file(url, filepath):
                print("  -> Success (LoremFlickr)")
                success = True
            else:
                print("  -> Failed (LoremFlickr)")

        if success:
            d['images'] = [f"assets/images/{filename}"]
            updates += 1
        
        # Respect rate limits
        time.sleep(3)

    if updates > 0:
        new_json_str = json.dumps(diseases, indent=4)
        new_block = f"static const String diseasesJson = '''\n{new_json_str}\n''';"
        final_content = re.sub(r'static const String diseasesJson\s*=\s*\'\'\'.*?\'\'\';', new_block, content, flags=re.DOTALL)
        
        with open(SEED_DATA_PATH, 'w', encoding='utf-8') as f:
            f.write(final_content)
        print(f"Updated seed_data.dart with {updates} new images")
    else:
        print("No updates needed")

if __name__ == '__main__':
    main()
