import re
import os
import requests
import json

# Define paths
SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
ASSETS_DIR = r'g:\Antigravity\agri_disease_app\assets\images'

# Ensure assets directory exists
os.makedirs(ASSETS_DIR, exist_ok=True)

def download_image(url, filename):
    try:
        response = requests.get(url, stream=True, timeout=10)
        if response.status_code == 200:
            filepath = os.path.join(ASSETS_DIR, filename)
            with open(filepath, 'wb') as f:
                for chunk in response.iter_content(1024):
                    f.write(chunk)
            print(f"Downloaded: {filename}")
            return True
        else:
            print(f"Failed to download {url}: Status {response.status_code}")
            return False
    except Exception as e:
        print(f"Error downloading {url}: {e}")
        return False

def parse_and_download():
    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    # Regex to find JSON arrays in the dart file
    # Looking for static const String plantsJson = ''' ... ''';
    # and static const String diseasesJson = ''' ... ''';
    
    plants_match = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    diseases_match = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)

    if not plants_match or not diseases_match:
        print("Could not find JSON data in seed_data.dart")
        return

    plants_data = json.loads(plants_match.group(1))
    diseases_data = json.loads(diseases_match.group(1))

    # Process Plants
    print("Processing Plants...")
    for plant in plants_data:
        images = plant.get('images', [])
        for i, url in enumerate(images):
            if url.startswith('http'):
                filename = f"plant_{plant['id']}_{i}.jpg"
                download_image(url, filename)

    # Process Diseases
    print("Processing Diseases...")
    for disease in diseases_data:
        images = disease.get('images', [])
        for i, url in enumerate(images):
            if url.startswith('http'):
                # sanitize id just in case
                safe_id = disease['id'].replace(' ', '_')
                filename = f"disease_{safe_id}_{i}.jpg"
                download_image(url, filename)

if __name__ == '__main__':
    parse_and_download()
