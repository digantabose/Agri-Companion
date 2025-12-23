
import json
import re
import os

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
ASSETS_DIR = r'g:\Antigravity\agri_disease_app\assets\images'

def main():
    print(f"Scanning {ASSETS_DIR}...")
    existing_files = os.listdir(ASSETS_DIR)
    print(f"Found {len(existing_files)} files.")

    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    # Regex to extract JSON blocks
    # Plants
    match_plants = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    if not match_plants:
        print("Could not find plantsJson")
        return
    plants_data = json.loads(match_plants.group(1))

    # Diseases
    match_diseases = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    if not match_diseases:
        print("Could not find diseasesJson")
        return
    json_str = match_diseases.group(1).strip()
    # Check if it lacks a closing bracket (unlikely with this regex but possible if file is malformed)
    if not json_str.endswith(']'):
        json_str += ']'
    diseases_data = json.loads(json_str)
    
    updates = 0

    # Process Plants
    for p in plants_data:
        pid = p['id']
        # Check for plant_ID_0.jpg/png
        # Try finding a matching file
        candidates = [f for f in existing_files if f.startswith(f"plant_{pid}_")]
        if candidates:
            # Sort to get deterministic
            candidates.sort()
            # Construct asset paths
            new_images = [f"assets/images/{c}" for c in candidates]
            # Update only if different
            if p.get('images') != new_images:
                p['images'] = new_images
                updates += 1
                print(f"Updated Plant {pid} -> {new_images}")

    # Process Diseases
    for d in diseases_data:
        did = d['id']
        # Check for disease_ID_0.jpg/png
        candidates = [f for f in existing_files if f.startswith(f"disease_{did}_")]
        if candidates:
            candidates.sort()
            new_images = [f"assets/images/{c}" for c in candidates]
            if d.get('images') != new_images:
                d['images'] = new_images
                updates += 1
                print(f"Updated Disease {did} -> {new_images}")

    if updates > 0:
        print(f"Saving {updates} updates to seed_data.dart...")
        
        # Re-serialize Plants
        new_plants_str = json.dumps(plants_data, indent=4)
        new_plants_block = f"static const String plantsJson = '''\n{new_plants_str}\n''';"
        # Escape backslashes for re.sub
        new_plants_block_safe = new_plants_block.replace('\\', '\\\\')
        content = re.sub(r'static const String plantsJson\s*=\s*\'\'\'.*?\'\'\';', new_plants_block_safe, content, flags=re.DOTALL)

        # Re-serialize Diseases
        new_diseases_str = json.dumps(diseases_data, indent=4)
        new_diseases_block = f"static const String diseasesJson = '''\n{new_diseases_str}\n''';"
        new_diseases_block_safe = new_diseases_block.replace('\\', '\\\\')
        content = re.sub(r'static const String diseasesJson\s*=\s*\'\'\'.*?\'\'\';', new_diseases_block_safe, content, flags=re.DOTALL)

        with open(SEED_DATA_PATH, 'w', encoding='utf-8') as f:
            f.write(content)
        print("Done.")
    else:
        print("No updates needed.")

if __name__ == "__main__":
    main()
