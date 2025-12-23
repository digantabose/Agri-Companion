import re
import os
import json
import requests
import urllib.parse
import time
import random
import shutil

SEED_DATA_PATH = r'g:\Antigravity\agri_disease_app\lib\data\datasources\seed_data.dart'
ASSETS_DIR = r'g:\Antigravity\agri_disease_app\assets\images'

# Extracted from PlantVillage GitHub
PV_FOLDERS = [
    "Apple___Apple_scab", "Apple___Black_rot", "Apple___Cedar_apple_rust", "Apple___healthy",
    "Blueberry___healthy", "Cherry_(including_sour)___Powdery_mildew", "Cherry_(including_sour)___healthy",
    "Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot", "Corn_(maize)___Common_rust_", "Corn_(maize)___Northern_Leaf_Blight", "Corn_(maize)___healthy",
    "Grape___Black_rot", "Grape___Esca_(Black_Measles)", "Grape___Leaf_blight_(Isariopsis_Leaf_Spot)", "Grape___healthy",
    "Orange___Haunglongbing_(Citrus_greening)",
    "Peach___Bacterial_spot", "Peach___healthy",
    "Pepper,_bell___Bacterial_spot", "Pepper,_bell___healthy",
    "Potato___Early_blight", "Potato___Late_blight", "Potato___healthy",
    "Raspberry___healthy", "Soybean___healthy",
    "Squash___Powdery_mildew", "Strawberry___Leaf_scorch", "Strawberry___healthy",
    "Tomato___Bacterial_spot", "Tomato___Early_blight", "Tomato___Late_blight", "Tomato___Leaf_Mold",
    "Tomato___Septoria_leaf_spot", "Tomato___Spider_mites Two-spotted_spider_mite", "Tomato___Target_Spot",
    "Tomato___Tomato_Yellow_Leaf_Curl_Virus", "Tomato___Tomato_mosaic_virus", "Tomato___healthy"
]

# Mapping Disease ID/Name to PlantVillage Folder (where applicable)
PV_MAPPING = {
    "d1": "Tomato___Early_blight", # Early Blight (Tomato)
    "d2": None, # Blast Disease (Rice) - No PV
    "d3": None, # Wheat Rust - No PV
    "d6": "Corn_(maize)___Common_rust_", # Corn Smut (Closest: Common rust? No, Smut is distinct. Fallback to AI)
    "d7": None, # Boll Rot (Cotton)
    "d8": None, # Red Rot (Sugarcane)
    "d9": None, # Soybean Rust (Soybean). PV has Soybean___healthy only.
    "d10": "Cherry_(including_sour)___Powdery_mildew", # Powdery Mildew. Plant 11 is Barley? Wait.
    "d11": None, # Panama Disease (Banana)
    "d12": "Orange___Haunglongbing_(Citrus_greening)", # Citrus Canker? No this is Greening. Fallback to AI.
    "d13": "Grape___Leaf_blight_(Isariopsis_Leaf_Spot)", # Downy Mildew? No PV has Black rot, Esca, Leaf blight.
    "d14": None, # Papaya Ringspot
    "d15": None, # Heart Rot (Pineapple)
    "d16": None, # Carrot Leaf Blight
    "d17": None, # Purple Blotch (Onion)
    "d18": None, # Black Rot (Cabbage)
    "d19": "Pepper,_bell___Bacterial_spot", # Anthracnose (Pepper)? PV has Bacterial spot.
}
# Note: Since mapping is hard and specific to plant+disease, we'll try to fuzzy match or just use AI if sure match not found.
# Actually, let's just use AI with better prompts for unmapped ones, and PV for perfect matches.

# Refined Mapping based on seed_data.dart content
# Plant 1 = Tomato -> d1 (Early Blight) -> Matches Tomato___Early_blight
# Plant 5 = Potato -> ... (not in d list above but Potato___Early_blight exists)
# Let's write a smarter matcher.

def download_file(url, filepath):
    try:
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        }
        resp = requests.get(url, headers=headers, timeout=30)
        if resp.status_code == 200:
            with open(filepath, 'wb') as f:
                f.write(resp.content)
            # Check size
            if os.path.getsize(filepath) < 1000: # < 1KB is suspicious
                return False
            return True
        return False
    except Exception as e:
        print(f"Error downloading {url}: {e}")
        return False

def get_pollinations_url(plant, disease, symptoms):
    # Enhanced prompt
    base_prompt = f"realistic close up photo of {plant} plant leaf affected by {disease} disease."
    if symptoms:
        base_prompt += f" Showing symptoms: {', '.join(symptoms)}."
    base_prompt += " High resolution, biological reference style."
    
    encoded = urllib.parse.quote(base_prompt)
    seed = random.randint(0, 99999)
    return f"https://image.pollinations.ai/prompt/{encoded}?noshare&seed={seed}"

def get_pv_image_url(folder_name):
    # We need to find a file URL within that folder.
    # Since we can't scrape the folder easily without navigating, 
    # and filenames are hashes, we'll use the 'raw' URL structure if we knew the filename.
    # BUT we don't know filenames.
    # ALTERNATIVE: Use a known 'master' repo that might have easy filenames OR use the browser-extracted list?
    # No, we only extracted folder names.
    # HACK: We will try to guess filenames? No.
    # RESCUE: We will use the GitHub API to list files in that directory!
    # https://api.github.com/repos/spMohanty/PlantVillage-Dataset/contents/raw/color/{folder_name}
    
    api_url = f"https://api.github.com/repos/spMohanty/PlantVillage-Dataset/contents/raw/color/{folder_name}"
    try:
        resp = requests.get(api_url)
        if resp.status_code == 200:
            files = resp.json()
            # Pick a random image file (JPG)
            images = [f for f in files if f['name'].lower().endswith(('.jpg', '.jpeg', '.png'))]
            if images:
                selected = random.choice(images)
                return selected['download_url']
    except Exception as e:
        print(f"PV API Error: {e}")
    return None

def main():
    print("Reading seed_data.dart...")
    with open(SEED_DATA_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    plants_match = re.search(r'plantsJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    diseases_match = re.search(r'diseasesJson\s*=\s*\'\'\'(.*?)\'\'\';', content, re.DOTALL)
    
    plants = json.loads(plants_match.group(1))
    diseases = json.loads(diseases_match.group(1))
    plant_map = {p['id']: p['name'] for p in plants}

    # Delete existing disease images to force refresh?
    # User said "images should be acording to the disease" implies replacement.
    # We will overwrite.

    for d in diseases:
        d_id = d['id']
        plant_name = plant_map.get(d['plantId'], "Plant")
        disease_name = d['name']
        symptoms = d.get('symptoms', [])
        
        filename = f"disease_{d_id}_0.jpg"
        filepath = os.path.join(ASSETS_DIR, filename)
        
        print(f"Processing {d_id}: {plant_name} - {disease_name}")
        
        # 1. Try PlantVillage Match
        p_name_clean = plant_name.replace(" ", "_")
        d_name_clean = disease_name.replace(" ", "_")
        
        # Fuzzy match attempt
        pv_folder = None
        for folder in PV_FOLDERS:
            # Check if both plant and disease key words exist in folder
            # Simple heuristic
            if plant_name.split()[0] in folder: 
                # Plant matches, check disease
                # Specific overrides
                if "Early Blight" in disease_name and "Early_blight" in folder: pv_folder = folder; break
                if "Late Blight" in disease_name and "Late_blight" in folder: pv_folder = folder; break
                if "Bacterial" in disease_name and "Bacterial_spot" in folder: pv_folder = folder; break
                if "Mosaic" in disease_name and "mosaic_virus" in folder: pv_folder = folder; break
                if "Rust" in disease_name and "rust" in folder.lower(): pv_folder = folder; break
                if "Mildew" in disease_name and "Powdery_mildew" in folder: pv_folder = folder; break
                if "Leaf Spot" in disease_name and "Leaf_spot" in folder: pv_folder = folder; break
        
        # Specific overrides for d1 (Tomato Early Blight) -> Tomato___Early_blight
        if d_id == 'd1': pv_folder = "Tomato___Early_blight"
        
        success = False
        
        if pv_folder:
            print(f"  -> Match found in PV: {pv_folder}")
            pv_url = get_pv_image_url(pv_folder)
            if pv_url:
                print(f"  -> Downloading from PV...")
                if download_file(pv_url, filepath):
                    success = True
                    print("  -> Success (PlantVillage)")
            else:
                print("  -> PV Source found but failed to get URL.")
        
        if not success:
            print(f"  -> generating AI image (Enhanced Prompt)...")
            ai_url = get_pollinations_url(plant_name, disease_name, symptoms)
            if download_file(ai_url, filepath):
                success = True
                print("  -> Success (AI)")
            else:
                print("  -> Failed (AI)")

        # Brief pause to be nice to APIs
        time.sleep(1)

    print("Done.")

if __name__ == '__main__':
    main()
