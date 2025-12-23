import re
import json

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'

def update_seed_data():
    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    # Function to replace images in JSON string
    def replace_images(match):
        json_str = match.group(1)
        data = json.loads(json_str)
        
        # We need to know if we are processing plants or diseases to name files correctly
        # This is a bit tricky with just the JSON.
        # Let's rely on the variable name preceding the match, which we can't easily get inside `sub`.
        # So we will do it sequentially.
        return match.group(0) # Logic moved below

    # Process Plants
    plants_match = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    if plants_match:
        plants_json = plants_match.group(1)
        plants_data = json.loads(plants_json)
        for plant in plants_data:
            images = plant.get('images', [])
            new_images = []
            for i, url in enumerate(images):
                if url.startswith('http'):
                    new_images.append(f"assets/images/plant_{plant['id']}_{i}.jpg")
                else:
                    new_images.append(url)
            plant['images'] = new_images
        
        new_plants_json = json.dumps(plants_data, indent=4)
        # simplistic replace, relying on the exact match
        content = content.replace(plants_match.group(1), "\n" + new_plants_json + "\n")

    # Process Diseases
    diseases_match = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    if diseases_match:
        diseases_json = diseases_match.group(1)
        diseases_data = json.loads(diseases_json)
        for disease in diseases_data:
            images = disease.get('images', [])
            new_images = []
            for i, url in enumerate(images):
                if url.startswith('http'):
                    safe_id = disease['id'].replace(' ', '_')
                    new_images.append(f"assets/images/disease_{safe_id}_{i}.jpg")
                else:
                    new_images.append(url)
            disease['images'] = new_images
            
        new_diseases_json = json.dumps(diseases_data, indent=4)
        content = content.replace(diseases_match.group(1), "\n" + new_diseases_json + "\n")

    with open(SEED_DATA_PATH, 'w', encoding='utf-8') as f:
        f.write(content)
    print("Updated seed_data.dart")

if __name__ == '__main__':
    update_seed_data()
