import re
import os
import json
import requests
import urllib.parse
import time

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
ASSETS_DIR = r'g:\Antigravity\agri_disease_app\assets\images'

def main():
    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    # extract plants
    plants_match = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    diseases_match = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)

    if not plants_match or not diseases_match:
        print("Could not parse JSON")
        return

    plants = json.loads(plants_match.group(1))
    diseases = json.loads(diseases_match.group(1))

    # Map plant id to name
    plant_map = {p['id']: p['name'] for p in plants}

    # Identify target diseases (d21 to d60, and maybe d18, d19 if they are placeholders)
    # We can just check if image is placeholder.jpg
    targets = []
    for d in diseases:
        images = d.get('images', [])
        if images and 'placeholder.jpg' in images[0]:
            targets.append(d)
    
    print(f"Found {len(targets)} diseases with placeholders.")

    updates_made = False

    for d in targets:
        plant_name = plant_map.get(d['plantId'], "Plant")
        disease_name = d['name']
        d_id = d['id']
        
        # Construct prompt
        prompt = f"realistic close up photo of {plant_name} plant affected by {disease_name} disease leaves or fruit high quality"
        encoded_prompt = urllib.parse.quote(prompt)
        url = f"https://image.pollinations.ai/prompt/{encoded_prompt}"
        
        filename = f"disease_{d_id}_0.jpg"
        filepath = os.path.join(ASSETS_DIR, filename)
        
        print(f"Downloading for {d_id} ({disease_name}): {prompt}")
        
        try:
            # Pollinations might take a moment, helpful to verify
            # Adding a random seed to url ensures new image if retried: ?n=...
            # But here standard url is fine.
            resp = requests.get(url, timeout=30)
            if resp.status_code == 200:
                with open(filepath, 'wb') as f:
                    f.write(resp.content)
                print(f"  -> Saved to {filename}")
                
                # Update content in memory (dumb replace is tricky if format differs)
                # We will re-serialize the whole JSON and replace the block
                # Update the d object in the list
                d['images'] = [f"assets/images/{filename}"]
                updates_made = True
            else:
                print(f"  -> Failed: {resp.status_code}")
        except Exception as e:
            print(f"  -> Error: {e}")
        
        # Be nice to the API
        time.sleep(1)

    if updates_made:
        # Re-serialize diseases
        new_json_str = json.dumps(diseases, indent=4)
        new_block = f"static const String diseasesJson = '''\n{new_json_str}\n''';"
        final_content = re.sub(r'static const String diseasesJson\s*=\s*\'\'\'.*?\'\'\';', new_block, content, flags=re.DOTALL)
        
        with open(SEED_DATA_PATH, 'w', encoding='utf-8') as f:
            f.write(final_content)
        print("Updated seed_data.dart")

if __name__ == '__main__':
    main()
