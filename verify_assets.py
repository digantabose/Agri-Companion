import re
import os
import json

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
PROJECT_ROOT = r'g:\Antigravity\agri_disease_app'

def main():
    print(f"Reading {SEED_DATA_PATH}...")
    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    # Extract JSON blocks
    plants_match = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    diseases_match = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)

    if not plants_match or not diseases_match:
        print("Error: Could not parse JSON from seed_data.dart")
        return

    plants = json.loads(plants_match.group(1))
    diseases = json.loads(diseases_match.group(1))

    missing_files = []
    checked_count = 0

    # Check Plants
    print("Checking Plant Images...")
    for p in plants:
        for img_path in p.get('images', []):
            checked_count += 1
            # img_path is like "assets/images/plant_7_0.jpg"
            # It is relative to project root? Usually assets are in project root relative
            full_path = os.path.join(PROJECT_ROOT, img_path.replace('/', os.sep))
            
            if not os.path.exists(full_path):
                missing_files.append(f"Plant {p['id']} ({p['name']}): {img_path}")

    # Check Diseases
    print("Checking Disease Images...")
    for d in diseases:
        for img_path in d.get('images', []):
            checked_count += 1
            full_path = os.path.join(PROJECT_ROOT, img_path.replace('/', os.sep))
            
            if not os.path.exists(full_path):
                missing_files.append(f"Disease {d['id']} ({d['name']}): {img_path}")

    print(f"\nChecked {checked_count} image references.")
    
    if missing_files:
        print(f"\n❌ FOUND {len(missing_files)} MISSING FILES:")
        for m in missing_files:
            print(f"  - {m}")
    else:
        print("\n[OK] All assets verified successfully!")

if __name__ == '__main__':
    main()
