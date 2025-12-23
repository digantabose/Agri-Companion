class SeedData {
  static const String plantsJson = '''
[
    {
        "id": "7",
        "name": "Corn",
        "scientificName": "Zea mays",
        "category": "Crops",
        "description": "Corn, also known as maize, is a cereal grain first domesticated by indigenous peoples in southern Mexico.",
        "climate": "Warm",
        "soilType": "Loam",
        "season": "Summer",
        "images": [
            "assets/images/plant_7_0.jpg"
        ]
    },
    {
        "id": "8",
        "name": "Cotton",
        "scientificName": "Gossypium",
        "category": "Crops",
        "description": "Cotton is a soft, fluffy staple fiber that grows in a boll, or protective case, around the seeds of the cotton plants.",
        "climate": "Tropical",
        "soilType": "Black Soil",
        "season": "Summer",
        "images": [
            "assets/images/plant_8_0.png"
        ]
    },
    {
        "id": "9",
        "name": "Sugarcane",
        "scientificName": "Saccharum officinarum",
        "category": "Crops",
        "description": "Sugarcane is a species of tall, perennial grass that is used for sugar production.",
        "climate": "Tropical",
        "soilType": "Loam",
        "season": "Year-round",
        "images": [
            "assets/images/plant_9_0.png"
        ]
    },
    {
        "id": "10",
        "name": "Soybean",
        "scientificName": "Glycine max",
        "category": "Crops",
        "description": "Soybean is a species of legume native to East Asia, key source of protein.",
        "climate": "Warm",
        "soilType": "Loam",
        "season": "Summer",
        "images": [
            "assets/images/plant_10_0.png"
        ]
    },
    {
        "id": "11",
        "name": "Barley",
        "scientificName": "Hordeum vulgare",
        "category": "Crops",
        "description": "Barley is a major cereal grain grown in temperate climates globally.",
        "climate": "Cool",
        "soilType": "Loam",
        "season": "Spring",
        "images": [
            "assets/images/plant_11_0.png"
        ]
    },
    {
        "id": "12",
        "name": "Banana",
        "scientificName": "Musa",
        "category": "Fruits",
        "description": "A banana is an elongated, edible fruit \u2013 botanically a berry \u2013 produced by several kinds of large herbaceous flowering plants.",
        "climate": "Tropical",
        "soilType": "Loam",
        "season": "Year-round",
        "images": [
            "assets/images/plant_12_0.jpg"
        ]
    },
    {
        "id": "13",
        "name": "Orange",
        "scientificName": "Citrus X sinensis",
        "category": "Fruits",
        "description": "The orange is the fruit of various citrus species in the family Rutaceae.",
        "climate": "Subtropical",
        "soilType": "Sandy Loam",
        "season": "Winter",
        "images": [
            "assets/images/plant_13_0.jpg"
        ]
    },
    {
        "id": "14",
        "name": "Grapes",
        "scientificName": "Vitis vinifera",
        "category": "Fruits",
        "description": "A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis.",
        "climate": "Temperate",
        "soilType": "Loam",
        "season": "Autumn",
        "images": [
            "assets/images/plant_14_0.png"
        ]
    },
    {
        "id": "15",
        "name": "Papaya",
        "scientificName": "Carica papaya",
        "category": "Fruits",
        "description": "The papaya is a small, sparsely branched tree, usually with a single stem growing from 5 to 10 m tall.",
        "climate": "Tropical",
        "soilType": "Sandy Loam",
        "season": "Year-round",
        "images": [
            "assets/images/plant_15_0.png"
        ]
    },
    {
        "id": "16",
        "name": "Pineapple",
        "scientificName": "Ananas comosus",
        "category": "Fruits",
        "description": "The pineapple is a tropical plant with an edible fruit and is the most economically significant plant in the family Bromeliaceae.",
        "climate": "Tropical",
        "soilType": "Sandy Loam",
        "season": "Year-round",
        "images": [
            "assets/images/plant_16_0.jpg"
        ]
    },
    {
        "id": "17",
        "name": "Carrot",
        "scientificName": "Daucus carota",
        "category": "Vegetables",
        "description": "The carrot is a root vegetable, usually orange in color, though purple, black, red, white, and yellow cultivars exist.",
        "climate": "Cool",
        "soilType": "Sandy",
        "season": "Winter",
        "images": [
            "assets/images/plant_17_0.jpg"
        ]
    },
    {
        "id": "18",
        "name": "Onion",
        "scientificName": "Allium cepa",
        "category": "Vegetables",
        "description": "The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium.",
        "climate": "Temperate",
        "soilType": "Loam",
        "season": "Spring",
        "images": [
            "assets/images/plant_18_0.png"
        ]
    },
    {
        "id": "19",
        "name": "Cabbage",
        "scientificName": "Brassica oleracea",
        "category": "Vegetables",
        "description": "Cabbage is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads.",
        "climate": "Cool",
        "soilType": "Loam",
        "season": "Winter",
        "images": [
            "assets/images/plant_19_0.png"
        ]
    },
    {
        "id": "20",
        "name": "Pepper",
        "scientificName": "Capsicum",
        "category": "Vegetables",
        "description": "Capsicum is a genus of flowering plants in the nightshade family   Solanaceae.",
        "climate": "Warm",
        "soilType": "Loam",
        "season": "Summer",
        "images": [
            "assets/images/plant_20_0.png"
        ]
    },
    {
        "id": "1",
        "name": "Tomatoes",
        "scientificName": "Solanum lycopersicum",
        "category": "Vegetables",
        "description": "The tomato is the edible berry of the plant Solanum lycopersicum.",
        "climate": "Warm",
        "soilType": "Loam",
        "season": "Summer",
        "images": [
            "assets/images/plant_1_0.jpg"
        ]
    },
    {
        "id": "2",
        "name": "Rice",
        "scientificName": "Oryza sativa",
        "category": "Crops",
        "description": "Rice is the seed of the grass species Oryza sativa.",
        "climate": "Tropical",
        "soilType": "Clay",
        "season": "Monsoon",
        "images": [
            "assets/images/plant_2_0.png"
        ]
    },
    {
        "id": "3",
        "name": "Mango",
        "scientificName": "Mangifera indica",
        "category": "Fruits",
        "description": "A mango is an edible stone fruit produced by the tropical tree Mangifera indica.",
        "climate": "Tropical",
        "soilType": "Alluvial",
        "season": "Summer",
        "images": [
            "assets/images/plant_3_0.jpg"
        ]
    },
    {
        "id": "4",
        "name": "Wheat",
        "scientificName": "Triticum",
        "category": "Crops",
        "description": "Wheat is a grass widely cultivated for its seed, a cereal grain which is a worldwide staple food.",
        "climate": "Cool",
        "soilType": "Loam",
        "season": "Winter",
        "images": [
            "assets/images/plant_4_0.jpg"
        ]
    },
    {
        "id": "5",
        "name": "Potato",
        "scientificName": "Solanum tuberosum",
        "category": "Vegetables",
        "description": "The potato is a starchy tuber of the plant Solanum tuberosum.",
        "climate": "Cool",
        "soilType": "Sandy Loam",
        "season": "Winter",
        "images": [
            "assets/images/plant_5_0.jpg"
        ]
    },
    {
        "id": "6",
        "name": "Apple",
        "scientificName": "Malus domestica",
        "category": "Fruits",
        "description": "An apple is an edible fruit produced by an apple tree.",
        "climate": "Cold",
        "soilType": "Loamy",
        "season": "Autumn",
        "images": [
            "assets/images/plant_6_0.jpg"
        ]
    }
]
''';

  static const String diseasesJson = '''
[
    {
        "id": "d1",
        "plantId": "1",
        "name": "Early Blight",
        "type": "Fungal",
        "symptoms": [
            "Dark spots on leaves",
            "Yellowing of leaves",
            "Fruit rot"
        ],
        "causes": "Fungus Alternaria solani",
        "severity": "High",
        "images": [
            "assets/images/disease_d1_0.png"
        ],
        "remedy": {
            "diseaseId": "d1",
            "preventiveMeasures": [
                "Crop rotation",
                "Mulching"
            ],
            "organicRemedies": [
                "Neem oil spray"
            ],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane M-45",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Foliar Spray",
                    "safetyPrecautions": "Wear mask and gloves"
                }
            ]
        }
    },
    {
        "id": "d6",
        "plantId": "7",
        "name": "Corn Smut",
        "type": "Fungal",
        "symptoms": [
            "Galls on kernels",
            "Black powdery spores",
            "Stunted growth"
        ],
        "causes": "Ustilago maydis",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d6_0.png"
        ],
        "remedy": {
            "diseaseId": "d6",
            "preventiveMeasures": [
                "Resistant hybrids",
                "Avoid mechanical injury"
            ],
            "organicRemedies": [
                "Remove galls before sporulation"
            ],
            "chemicalMedicines": [
                {
                    "name": "Carboxin",
                    "tradeName": "Vitavax",
                    "type": "Fungicide",
                    "dosage": "2g/kg seed",
                    "applicationMethod": "Seed treatment",
                    "safetyPrecautions": "Wear gloves"
                }
            ]
        }
    },
    {
        "id": "d7",
        "plantId": "8",
        "name": "Boll Rot",
        "type": "Fungal",
        "symptoms": [
            "Water soaked spots on bolls",
            "Rotting bolls",
            "Discolored lint"
        ],
        "causes": "Various fungi",
        "severity": "High",
        "images": [
            "assets/images/disease_d7_0.png"
        ],
        "remedy": {
            "diseaseId": "d7",
            "preventiveMeasures": [
                "Avoid rank growth",
                "Insect control"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Carbendazim",
                    "tradeName": "Bavistin",
                    "type": "Fungicide",
                    "dosage": "1g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Protective clothing"
                }
            ]
        }
    },
    {
        "id": "d8",
        "plantId": "9",
        "name": "Red Rot",
        "type": "Fungal",
        "symptoms": [
            "Reddening of internal tissues",
            "Sour smell",
            "Yellowing leaves"
        ],
        "causes": "Colletotrichum falcatum",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d8_0.png"
        ],
        "remedy": {
            "diseaseId": "d8",
            "preventiveMeasures": [
                "Healthy seed sets",
                "Crop rotation"
            ],
            "organicRemedies": [
                "Hot water treatment of sets"
            ],
            "chemicalMedicines": [
                {
                    "name": "Propiconazole",
                    "tradeName": "Tilt",
                    "type": "Fungicide",
                    "dosage": "1ml/liter",
                    "applicationMethod": "Set dip/Spray",
                    "safetyPrecautions": "Avoid skic contact"
                }
            ]
        }
    },
    {
        "id": "d9",
        "plantId": "10",
        "name": "Soybean Rust",
        "type": "Fungal",
        "symptoms": [
            "Tan/Reddish brown lesions",
            "Yellow leaves",
            "Premature defoliation"
        ],
        "causes": "Phakopsora pachyrhizi",
        "severity": "High",
        "images": [
            "assets/images/disease_d9_0.png"
        ],
        "remedy": {
            "diseaseId": "d9",
            "preventiveMeasures": [
                "Early planting",
                "Resistant varieties"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Azoxystrobin",
                    "tradeName": "Amistar",
                    "type": "Fungicide",
                    "dosage": "1ml/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Handle with care"
                }
            ]
        }
    },
    {
        "id": "d10",
        "plantId": "11",
        "name": "Powdery Mildew",
        "type": "Fungal",
        "symptoms": [
            "White powdery growth on leaves",
            "Yellowing",
            "Stunted plants"
        ],
        "causes": "Blumeria graminis",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d10_0.png"
        ],
        "remedy": {
            "diseaseId": "d10",
            "preventiveMeasures": [
                "Resistant varieties",
                "Balanced fertilization"
            ],
            "organicRemedies": [
                "Sulfur spray"
            ],
            "chemicalMedicines": [
                {
                    "name": "Triadimefon",
                    "tradeName": "Bayleton",
                    "type": "Fungicide",
                    "dosage": "0.5g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Avoid inhalation"
                }
            ]
        }
    },
    {
        "id": "d11",
        "plantId": "12",
        "name": "Panama Disease",
        "type": "Fungal",
        "symptoms": [
            "Yellowing of older leaves",
            "Splitting stem",
            "Plant wilt"
        ],
        "causes": "Fusarium oxysporum",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d11_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d11",
            "preventiveMeasures": [
                "Quarantine",
                "Resistant cultivars"
            ],
            "organicRemedies": [
                "Bio-agents"
            ],
            "chemicalMedicines": [
                {
                    "name": "Carbendazim",
                    "tradeName": "Bavistin",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Soil Drench",
                    "safetyPrecautions": "Protective gear"
                }
            ]
        }
    },
    {
        "id": "d12",
        "plantId": "13",
        "name": "Citrus Canker",
        "type": "Bacterial",
        "symptoms": [
            "Raised corky lesions",
            "Yellow halo",
            "Fruit drop"
        ],
        "causes": "Xanthomonas citri",
        "severity": "High",
        "images": [
            "assets/images/disease_d12_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d12",
            "preventiveMeasures": [
                "Windbreaks",
                "Copper sprays"
            ],
            "organicRemedies": [
                "Neem cake"
            ],
            "chemicalMedicines": [
                {
                    "name": "Streptocycline",
                    "tradeName": "Streptocycline",
                    "type": "Antibiotic",
                    "dosage": "1g/10 liters",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Use gloves"
                }
            ]
        }
    },
    {
        "id": "d13",
        "plantId": "14",
        "name": "Downy Mildew",
        "type": "Fungal",
        "symptoms": [
            "Yellow oil spots",
            "White downy growth",
            "Leaf drop"
        ],
        "causes": "Plasmopara viticola",
        "severity": "High",
        "images": [
            "assets/images/disease_d13_0.png"
        ],
        "remedy": {
            "diseaseId": "d13",
            "preventiveMeasures": [
                "Proper pruning",
                "Air circulation"
            ],
            "organicRemedies": [
                "Bordeaux mixture"
            ],
            "chemicalMedicines": [
                {
                    "name": "Metalaxyl",
                    "tradeName": "Ridomil",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Toxic"
                }
            ]
        }
    },
    {
        "id": "d14",
        "plantId": "15",
        "name": "Papaya Ringspot",
        "type": "Viral",
        "symptoms": [
            "Ring spots on fruit",
            "Mottled leaves",
            "Stunted growth"
        ],
        "causes": "Papaya ringspot virus",
        "severity": "High",
        "images": [
            "assets/images/disease_d14_0.png"
        ],
        "remedy": {
            "diseaseId": "d14",
            "preventiveMeasures": [
                "Remove infected plants",
                "Control aphids"
            ],
            "organicRemedies": [
                "Netting"
            ],
            "chemicalMedicines": [
                {
                    "name": "Imidacloprid",
                    "tradeName": "Confidor",
                    "type": "Insecticide",
                    "dosage": "0.5ml/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Toxic to bees"
                }
            ]
        }
    },
    {
        "id": "d15",
        "plantId": "16",
        "name": "Heart Rot",
        "type": "Fungal",
        "symptoms": [
            "Rotting of heart leaves",
            "Foul odor",
            "Easy pull of leaves"
        ],
        "causes": "Phytophthora",
        "severity": "High",
        "images": [
            "assets/images/disease_d15_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d15",
            "preventiveMeasures": [
                "Good drainage",
                "Healthy planting material"
            ],
            "organicRemedies": [
                "Trichoderma"
            ],
            "chemicalMedicines": [
                {
                    "name": "Fosetyl-Al",
                    "tradeName": "Aliette",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Dip/Spray",
                    "safetyPrecautions": "Irritant"
                }
            ]
        }
    },
    {
        "id": "d16",
        "plantId": "17",
        "name": "Carrot Leaf Blight",
        "type": "Fungal",
        "symptoms": [
            "Dark brown spots on leaves",
            "Leaf curling",
            "Yield loss"
        ],
        "causes": "Alternaria dauci",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d16_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d16",
            "preventiveMeasures": [
                "Crop rotation",
                "Seed treatment"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Chlorothalonil",
                    "tradeName": "Kavach",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Harmful if swallowed"
                }
            ]
        }
    },
    {
        "id": "d17",
        "plantId": "18",
        "name": "Purple Blotch",
        "type": "Fungal",
        "symptoms": [
            "Purple lesions on leaves",
            "Yellowing",
            "Bulb rot"
        ],
        "causes": "Alternaria porri",
        "severity": "High",
        "images": [
            "assets/images/disease_d17_0.png"
        ],
        "remedy": {
            "diseaseId": "d17",
            "preventiveMeasures": [
                "Proper drainage",
                "Crop rotation"
            ],
            "organicRemedies": [
                "Neem oil"
            ],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Indofil M-45",
                    "type": "Fungicide",
                    "dosage": "2.5g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Protective gear"
                }
            ]
        }
    },
    {
        "id": "d18",
        "plantId": "19",
        "name": "Black Rot",
        "type": "Bacterial",
        "symptoms": [
            "V-shaped yellow lesions",
            "Black veins",
            "Rotting heads"
        ],
        "causes": "Xanthomonas campestris",
        "severity": "High",
        "images": [
            "assets/images/disease_d18_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d18",
            "preventiveMeasures": [
                "Hot water seed treatment",
                "Crop rotation"
            ],
            "organicRemedies": [
                "Copper sprays"
            ],
            "chemicalMedicines": [
                {
                    "name": "Copper Hydroxide",
                    "tradeName": "Kocide",
                    "type": "Bactericide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Eye irritant"
                }
            ]
        }
    },
    {
        "id": "d19",
        "plantId": "20",
        "name": "Anthracnose",
        "type": "Fungal",
        "symptoms": [
            "Dark sunken spots on fruit",
            "Target-like lesions",
            "Fruit rot"
        ],
        "causes": "Colletotrichum",
        "severity": "High",
        "images": [
            "assets/images/disease_d19_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d19",
            "preventiveMeasures": [
                "Weed control",
                "Resistant varieties"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Azoxystrobin",
                    "tradeName": "Amistar",
                    "type": "Fungicide",
                    "dosage": "1ml/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Avoid contact"
                }
            ]
        }
    },
    {
        "id": "d2",
        "plantId": "2",
        "name": "Blast Disease",
        "type": "Fungal",
        "symptoms": [
            "Spindle-shaped spots",
            "Greyish center",
            "Leaf drying"
        ],
        "causes": "Fungus Magnaporthe oryzae",
        "severity": "High",
        "images": [
            "assets/images/disease_d2_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d2",
            "preventiveMeasures": [
                "Use resistant varieties",
                "Avoid excess nitrogen"
            ],
            "organicRemedies": [
                "Pseudomonas fluorescens"
            ],
            "chemicalMedicines": [
                {
                    "name": "Tricyclazole",
                    "tradeName": "Beam",
                    "type": "Fungicide",
                    "dosage": "0.6g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Avoid inhalation"
                }
            ]
        }
    },
    {
        "id": "d3",
        "plantId": "4",
        "name": "Wheat Rust",
        "type": "Fungal",
        "symptoms": [
            "Orange/Red pustules on leaves",
            "Stunted growth",
            "Shriveled grains"
        ],
        "causes": "Fungus Puccinia triticina",
        "severity": "High",
        "images": [
            "assets/images/disease_d3_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d3",
            "preventiveMeasures": [
                "Plant resistant varieties",
                "Remove volunteer wheat"
            ],
            "organicRemedies": [
                "Neem oil",
                "Sulfur dust"
            ],
            "chemicalMedicines": [
                {
                    "name": "Propiconazole",
                    "tradeName": "Tilt",
                    "type": "Fungicide",
                    "dosage": "1ml/liter",
                    "applicationMethod": "Foliar Spray",
                    "safetyPrecautions": "Wear protective gear"
                }
            ]
        }
    },
    {
        "id": "d4",
        "plantId": "5",
        "name": "Late Blight",
        "type": "Fungal",
        "symptoms": [
            "Brown blotches on leaves",
            "White mold",
            "Rotting tubers"
        ],
        "causes": "Phytophthora infestans",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d4_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d4",
            "preventiveMeasures": [
                "Certified seed potatoes",
                "Avoid overhead irrigation"
            ],
            "organicRemedies": [
                "Copper fungicide"
            ],
            "chemicalMedicines": [
                {
                    "name": "Metalaxyl",
                    "tradeName": "Ridomil Gold",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Toxic if inhaled"
                }
            ]
        }
    },
    {
        "id": "d5",
        "plantId": "6",
        "name": "Apple Scab",
        "type": "Fungal",
        "symptoms": [
            "Olive-green spots on leaves",
            "Scabs on fruit",
            "Leaf drop"
        ],
        "causes": "Venturia inaequalis",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d5_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d5",
            "preventiveMeasures": [
                "Prune trees to open canopy",
                "Remove fallen leaves"
            ],
            "organicRemedies": [
                "Sulfur sprays",
                "Baking soda solution"
            ],
            "chemicalMedicines": [
                {
                    "name": "Captan",
                    "tradeName": "Captaf",
                    "type": "Fungicide",
                    "dosage": "2-3g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Eye irritant"
                }
            ]
        }
    },
    {
        "id": "d21",
        "plantId": "1",
        "name": "Bacterial Spot",
        "type": "Bacterial",
        "symptoms": [
            "Small dark spots",
            "Yellow halo on leaves",
            "Scab on fruit"
        ],
        "causes": "Xanthomonas bacteria",
        "severity": "High",
        "images": [
            "assets/images/disease_d21_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d21",
            "preventiveMeasures": [
                "Copper sprays",
                "Remove debris"
            ],
            "organicRemedies": [
                "Bordeaux mixture"
            ],
            "chemicalMedicines": [
                {
                    "name": "Copper Hydroxide",
                    "tradeName": "Kocide",
                    "type": "Bactericide",
                    "dosage": "2g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d22",
        "plantId": "1",
        "name": "Tomato Mosaic Virus",
        "type": "Viral",
        "symptoms": [
            "Mottled leaves",
            "Stunted growth",
            "Reduced yield"
        ],
        "causes": "ToMV Virus",
        "severity": "High",
        "images": [
            "assets/images/disease_d22_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d22",
            "preventiveMeasures": [
                "Resistant varieties",
                "Sanitize tools"
            ],
            "organicRemedies": [
                "Milk spray (preventive)"
            ],
            "chemicalMedicines": [
                {
                    "name": "Imidacloprid",
                    "tradeName": "Confidor",
                    "type": "Insecticide",
                    "dosage": "0.3ml/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Handle with care"
                }
            ]
        }
    },
    {
        "id": "d23",
        "plantId": "2",
        "name": "Brown Spot",
        "type": "Fungal",
        "symptoms": [
            "Brown seedlings",
            "Dark spots on glumes",
            "Yield reduction"
        ],
        "causes": "Bipolaris oryzae",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d23_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d23",
            "preventiveMeasures": [
                "Seed treatment",
                "Balanced nutrition"
            ],
            "organicRemedies": [
                "Neem leaf extract"
            ],
            "chemicalMedicines": [
                {
                    "name": "Carbendazim",
                    "tradeName": "Bavistin",
                    "type": "Fungicide",
                    "dosage": "1g/L",
                    "applicationMethod": "Seed dip",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d24",
        "plantId": "2",
        "name": "Bacterial Leaf Blight",
        "type": "Bacterial",
        "symptoms": [
            "Water-soaked streaks",
            "Yellow leaves",
            "Milky ooze"
        ],
        "causes": "Xanthomonas oryzae",
        "severity": "High",
        "images": [
            "assets/images/disease_d24_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d24",
            "preventiveMeasures": [
                "Resistant varieties",
                "Drain fields"
            ],
            "organicRemedies": [
                "Cow dung slurry"
            ],
            "chemicalMedicines": [
                {
                    "name": "Streptomycin",
                    "tradeName": "Plantomycin",
                    "type": "Antibiotic",
                    "dosage": "0.1g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d25",
        "plantId": "3",
        "name": "Powdery Mildew",
        "type": "Fungal",
        "symptoms": [
            "White powder on flowers",
            "Fruit drop",
            "Malformation"
        ],
        "causes": "Oidium mangiferae",
        "severity": "High",
        "images": [
            "assets/images/disease_d25_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d25",
            "preventiveMeasures": [
                "Pruning",
                "Sulfur dusting"
            ],
            "organicRemedies": [
                "Wettable Sulfur"
            ],
            "chemicalMedicines": [
                {
                    "name": "Hexaconazole",
                    "tradeName": "Contaf",
                    "type": "Fungicide",
                    "dosage": "1ml/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d26",
        "plantId": "3",
        "name": "Anthracnose",
        "type": "Fungal",
        "symptoms": [
            "Black spots on leaves",
            "Withering flowers",
            "Black sunken spots on fruit"
        ],
        "causes": "Colletotrichum gloeosporioides",
        "severity": "High",
        "images": [
            "assets/images/disease_d26_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d26",
            "preventiveMeasures": [
                "Field sanitation",
                "Bagging fruits"
            ],
            "organicRemedies": [
                "Hot water treatment"
            ],
            "chemicalMedicines": [
                {
                    "name": "Carbendazim",
                    "tradeName": "Bavistin",
                    "type": "Fungicide",
                    "dosage": "1g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d27",
        "plantId": "4",
        "name": "Loose Smut",
        "type": "Fungal",
        "symptoms": [
            "Black powdery heads",
            "Seeds replaced by spores",
            "Stunted growth"
        ],
        "causes": "Ustilago tritici",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d27_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d27",
            "preventiveMeasures": [
                "Resistant varieties",
                "Solar heat treatment"
            ],
            "organicRemedies": [
                "Hot water soak"
            ],
            "chemicalMedicines": [
                {
                    "name": "Carboxin",
                    "tradeName": "Vitavax",
                    "type": "Fungicide",
                    "dosage": "2g/kg seed",
                    "applicationMethod": "Seed treatment",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d28",
        "plantId": "4",
        "name": "Septoria Leaf Blotch",
        "type": "Fungal",
        "symptoms": [
            "Yellow flecks",
            "Brown lesions",
            "Black fruiting bodies"
        ],
        "causes": "Septoria tritici",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d28_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d28",
            "preventiveMeasures": [
                "Crop rotation",
                "Clean seed"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Epoxiconazole",
                    "tradeName": "Opus",
                    "type": "Fungicide",
                    "dosage": "1L/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Protective gear"
                }
            ]
        }
    },
    {
        "id": "d29",
        "plantId": "5",
        "name": "Common Scab",
        "type": "Bacterial",
        "symptoms": [
            "Cork-like lesions",
            "Rough skin",
            "Pitted tuber"
        ],
        "causes": "Streptomyces scabies",
        "severity": "Low",
        "images": [
            "assets/images/disease_d29_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d29",
            "preventiveMeasures": [
                "Acidic soil (pH 5.0-5.2)",
                "Resistant varieties"
            ],
            "organicRemedies": [
                "Soybean cover crop"
            ],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane M-45",
                    "type": "Fungicide",
                    "dosage": "2.5g/liter",
                    "applicationMethod": "Seed treatment",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d30",
        "plantId": "5",
        "name": "Early Blight",
        "type": "Fungal",
        "symptoms": [
            "Target spots on leaves",
            "Yellowing",
            "Tuber rot"
        ],
        "causes": "Alternaria solani",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d30_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d30",
            "preventiveMeasures": [
                "Rotation",
                "Drip irrigation"
            ],
            "organicRemedies": [
                "Copper spray"
            ],
            "chemicalMedicines": [
                {
                    "name": "Chlorothalonil",
                    "tradeName": "Bravo",
                    "type": "Fungicide",
                    "dosage": "2L/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Avoid skin contact"
                }
            ]
        }
    },
    {
        "id": "d31",
        "plantId": "6",
        "name": "Fire Blight",
        "type": "Bacterial",
        "symptoms": [
            "Burnt appearance",
            "Shepherd's crook twigs",
            "Ooze from cankers"
        ],
        "causes": "Erwinia amylovora",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d31_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d31",
            "preventiveMeasures": [
                "Pruning",
                "Resistant rootstocks"
            ],
            "organicRemedies": [
                "Copper sprays"
            ],
            "chemicalMedicines": [
                {
                    "name": "Streptomycin",
                    "tradeName": "FireWall",
                    "type": "Antibiotic",
                    "dosage": "100ppm",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d32",
        "plantId": "6",
        "name": "Cedar Apple Rust",
        "type": "Fungal",
        "symptoms": [
            "Yellow-orange spots",
            "Fungal tubes on fruit",
            "Defoliation"
        ],
        "causes": "Gymnosporangium",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d32_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d32",
            "preventiveMeasures": [
                "Remove juniper hosts",
                "Resistant varieties"
            ],
            "organicRemedies": [
                "Sulfur"
            ],
            "chemicalMedicines": [
                {
                    "name": "Myclobutanil",
                    "tradeName": "Rally",
                    "type": "Fungicide",
                    "dosage": "100g/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d33",
        "plantId": "7",
        "name": "Northern Corn Leaf Blight",
        "type": "Fungal",
        "symptoms": [
            "Cigar-shaped lesions",
            "Gray-green spots",
            "Withered leaves"
        ],
        "causes": "Exserohilum turcicum",
        "severity": "High",
        "images": [
            "assets/images/disease_d33_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d33",
            "preventiveMeasures": [
                "Resistant hybrids",
                "Crop rotation"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane",
                    "type": "Fungicide",
                    "dosage": "2kg/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Protective gear"
                }
            ]
        }
    },
    {
        "id": "d34",
        "plantId": "7",
        "name": "Common Rust",
        "type": "Fungal",
        "symptoms": [
            "Cinnamon-brown pustules",
            " Leaf chlorosis",
            "Reduced photosynthesis"
        ],
        "causes": "Puccinia sorghi",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d34_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d34",
            "preventiveMeasures": [
                "Resistant hybrids",
                "Early planting"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Azoxystrobin",
                    "tradeName": "Quadris",
                    "type": "Fungicide",
                    "dosage": "0.5L/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d35",
        "plantId": "8",
        "name": "Cotton Leaf Curl Virus",
        "type": "Viral",
        "symptoms": [
            "Upward curling leaves",
            "Thickened veins",
            "Stunted plants"
        ],
        "causes": "Begomovirus",
        "severity": "High",
        "images": [
            "assets/images/disease_d35_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d35",
            "preventiveMeasures": [
                "Resistant varieties",
                "Control whitefly"
            ],
            "organicRemedies": [
                "Neem oil for vector"
            ],
            "chemicalMedicines": [
                {
                    "name": "Diafenthiuron",
                    "tradeName": "Pegasus",
                    "type": "Insecticide",
                    "dosage": "1g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Toxic"
                }
            ]
        }
    },
    {
        "id": "d36",
        "plantId": "8",
        "name": "Fusarium Wilt",
        "type": "Fungal",
        "symptoms": [
            "Wilting",
            "Yellowing",
            "Vascular discoloration"
        ],
        "causes": "Fusarium oxysporum",
        "severity": "High",
        "images": [
            "assets/images/disease_d36_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d36",
            "preventiveMeasures": [
                "Resistant cultivars",
                "Potash application"
            ],
            "organicRemedies": [
                "Trichoderma"
            ],
            "chemicalMedicines": [
                {
                    "name": "Carbendazim",
                    "tradeName": "Bavistin",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Drench",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d37",
        "plantId": "9",
        "name": "Grassy Shoot",
        "type": "Phytoplasma",
        "symptoms": [
            "Numerous tillers",
            "Thin narrow leaves",
            "Stunted clump"
        ],
        "causes": "Phytoplasma",
        "severity": "High",
        "images": [
            "assets/images/disease_d37_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d37",
            "preventiveMeasures": [
                "Hot water treatment",
                "Remove infected clumps"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Tetracycline",
                    "tradeName": "Tetracycline",
                    "type": "Antibiotic",
                    "dosage": "500ppm",
                    "applicationMethod": "Set dip",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d38",
        "plantId": "9",
        "name": "Smut",
        "type": "Fungal",
        "symptoms": [
            "Black whip-like structure",
            "Sooty spores",
            "Stunted canes"
        ],
        "causes": "Sporisorium scitamineum",
        "severity": "High",
        "images": [
            "assets/images/disease_d38_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d38",
            "preventiveMeasures": [
                "Resistant varieties",
                "Rogueing"
            ],
            "organicRemedies": [
                "Hot water treatment"
            ],
            "chemicalMedicines": [
                {
                    "name": "Propiconazole",
                    "tradeName": "Tilt",
                    "type": "Fungicide",
                    "dosage": "1ml/L",
                    "applicationMethod": "Set dip",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d39",
        "plantId": "10",
        "name": "Bacterial Blight",
        "type": "Bacterial",
        "symptoms": [
            "Water soaked spots",
            "Tattered leaves",
            "Yellow halos"
        ],
        "causes": "Pseudomonas syringae",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d39_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d39",
            "preventiveMeasures": [
                "Clean seed",
                "Rotation"
            ],
            "organicRemedies": [
                "Copper spray"
            ],
            "chemicalMedicines": [
                {
                    "name": "Copper Oxychloride",
                    "tradeName": "Blitox",
                    "type": "Bactericide",
                    "dosage": "3g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d40",
        "plantId": "10",
        "name": "Soybean Mosaic Virus",
        "type": "Viral",
        "symptoms": [
            "Mottled leaves",
            "Rugose leaves",
            "Mottled seed"
        ],
        "causes": "SMV",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d40_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d40",
            "preventiveMeasures": [
                "Virus-free seed",
                "Aphid control"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Thiamethoxam",
                    "tradeName": "Actara",
                    "type": "Insecticide",
                    "dosage": "0.5g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Avoid inhalation"
                }
            ]
        }
    },
    {
        "id": "d41",
        "plantId": "11",
        "name": "Net Blotch",
        "type": "Fungal",
        "symptoms": [
            "Net-like pattern spots",
            "Yellowing",
            "Leaf death"
        ],
        "causes": "Pyrenophora teres",
        "severity": "High",
        "images": [
            "assets/images/disease_d41_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d41",
            "preventiveMeasures": [
                "Rotation",
                "Clean seed"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Propiconazole",
                    "tradeName": "Tilt",
                    "type": "Fungicide",
                    "dosage": "0.5L/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d42",
        "plantId": "11",
        "name": "Stripe Rust",
        "type": "Fungal",
        "symptoms": [
            "Yellow stripes on leaves",
            "Pustules",
            "Stunted growth"
        ],
        "causes": "Puccinia striiformis",
        "severity": "High",
        "images": [
            "assets/images/disease_d42_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d42",
            "preventiveMeasures": [
                "Resistant varieties",
                "Fungicides"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Tebuconazole",
                    "tradeName": "Folicur",
                    "type": "Fungicide",
                    "dosage": "0.5L/ha",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d43",
        "plantId": "12",
        "name": "Black Sigatoka",
        "type": "Fungal",
        "symptoms": [
            "Black streaks on leaves",
            "Necrosis",
            "Reduced photosynthesis"
        ],
        "causes": "Mycosphaerella fijiensis",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d43_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d43",
            "preventiveMeasures": [
                "De-leafing",
                "Drainage"
            ],
            "organicRemedies": [
                "Mineral oil"
            ],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane",
                    "type": "Fungicide",
                    "dosage": "2g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d44",
        "plantId": "12",
        "name": "Banana Bunchy Top",
        "type": "Viral",
        "symptoms": [
            "Bunches of leaves at top",
            "Green streaks",
            "Stunted plant"
        ],
        "causes": "BBTV",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d44_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d44",
            "preventiveMeasures": [
                "Virus-free suckers",
                "Remove infected"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Imidacloprid",
                    "tradeName": "Confidor",
                    "type": "Insecticide",
                    "dosage": "0.5ml/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Toxic"
                }
            ]
        }
    },
    {
        "id": "d45",
        "plantId": "13",
        "name": "Citrus Greening",
        "type": "Bacterial",
        "symptoms": [
            "Yellow mottling",
            "Small lopsided fruit",
            "Bitter taste"
        ],
        "causes": "Candidatus Liberibacter",
        "severity": "Critical",
        "images": [
            "assets/images/disease_d45_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d45",
            "preventiveMeasures": [
                "Psyllid control",
                "Remove infected"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Tetracycline",
                    "tradeName": "Tetracycline HCl",
                    "type": "Antibiotic",
                    "dosage": "Injectable",
                    "applicationMethod": "Trunk Injection",
                    "safetyPrecautions": "Specialist only"
                }
            ]
        }
    },
    {
        "id": "d46",
        "plantId": "13",
        "name": "Melanose",
        "type": "Fungal",
        "symptoms": [
            "Sandpaper-like spots",
            "Fruit pimples",
            "Leaf spotting"
        ],
        "causes": "Diaporthe citri",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d46_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d46",
            "preventiveMeasures": [
                "Pruning dead wood"
            ],
            "organicRemedies": [
                "Copper fungicide"
            ],
            "chemicalMedicines": [
                {
                    "name": "Copper Hydroxide",
                    "tradeName": "Kocide",
                    "type": "Fungicide",
                    "dosage": "2g/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Eye irritant"
                }
            ]
        }
    },
    {
        "id": "d47",
        "plantId": "14",
        "name": "Powdery Mildew",
        "type": "Fungal",
        "symptoms": [
            "White powder on berries",
            "Russeting",
            "Stunted growth"
        ],
        "causes": "Erysiphe necator",
        "severity": "High",
        "images": [
            "assets/images/disease_d47_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d47",
            "preventiveMeasures": [
                "Sunlight exposure",
                "Sulfur"
            ],
            "organicRemedies": [
                "Sulfur dust"
            ],
            "chemicalMedicines": [
                {
                    "name": "Myclobutanil",
                    "tradeName": "Rally",
                    "type": "Fungicide",
                    "dosage": "0.1g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d48",
        "plantId": "14",
        "name": "Black Rot",
        "type": "Fungal",
        "symptoms": [
            "Brown spots on leaves",
            "Shriveled black berries",
            "Mummies"
        ],
        "causes": "Guignardia bidwellii",
        "severity": "High",
        "images": [
            "assets/images/disease_d48_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d48",
            "preventiveMeasures": [
                "Sanitation",
                "Air circulation"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane",
                    "type": "Fungicide",
                    "dosage": "2.5g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d49",
        "plantId": "15",
        "name": "Anthracnose",
        "type": "Fungal",
        "symptoms": [
            "Sunken spots on fruit",
            "Pink spore masses",
            "Fruit rot"
        ],
        "causes": "Colletotrichum",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d49_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d49",
            "preventiveMeasures": [
                "Hot water dip",
                "Field hygiene"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Thiabendazole",
                    "tradeName": "Mertect",
                    "type": "Fungicide",
                    "dosage": "1g/L",
                    "applicationMethod": "Dip",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d50",
        "plantId": "15",
        "name": "Papaya Leaf Curl",
        "type": "Viral",
        "symptoms": [
            "Curled leaves",
            "Thickened veins",
            "Stunted growth"
        ],
        "causes": "Leaf curl virus",
        "severity": "High",
        "images": [
            "assets/images/disease_d50_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d50",
            "preventiveMeasures": [
                "Whitefly control",
                "Remove plants"
            ],
            "organicRemedies": [
                "Neem oil"
            ],
            "chemicalMedicines": []
        }
    },
    {
        "id": "d51",
        "plantId": "16",
        "name": "Pineapple Wilt",
        "type": "Viral",
        "symptoms": [
            "Reddening leaves",
            "Curling margins",
            "Root collapse"
        ],
        "causes": "Mealybug wilt virus",
        "severity": "High",
        "images": [
            "assets/images/disease_d51_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d51",
            "preventiveMeasures": [
                "Ant control",
                "Mealybug control"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Imidacloprid",
                    "tradeName": "Confidor",
                    "type": "Insecticide",
                    "dosage": "0.5ml/L",
                    "applicationMethod": "Drench",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d52",
        "plantId": "16",
        "name": "Root Rot",
        "type": "Fungal",
        "symptoms": [
            "Stunted growth",
            "Yellowing",
            "Rotting roots"
        ],
        "causes": "Phytophthora cinnamomi",
        "severity": "High",
        "images": [
            "assets/images/disease_d52_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d52",
            "preventiveMeasures": [
                "Drainage",
                "Raised beds"
            ],
            "organicRemedies": [
                "Trichoderma"
            ],
            "chemicalMedicines": [
                {
                    "name": "Metalaxyl",
                    "tradeName": "Ridomil",
                    "type": "Fungicide",
                    "dosage": "2g/L",
                    "applicationMethod": "Drench",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d53",
        "plantId": "17",
        "name": "Powdery Mildew",
        "type": "Fungal",
        "symptoms": [
            "White patches",
            "Yellow leaves",
            "Reduced yield"
        ],
        "causes": "Erysiphe heraclei",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d53_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d53",
            "preventiveMeasures": [
                "Resistant varieties",
                "Spacing"
            ],
            "organicRemedies": [
                "Sulfur"
            ],
            "chemicalMedicines": []
        }
    },
    {
        "id": "d54",
        "plantId": "17",
        "name": "Bacterial Soft Rot",
        "type": "Bacterial",
        "symptoms": [
            "Watery rot",
            "Foul smell",
            "Mushy roots"
        ],
        "causes": "Erwinia carotovora",
        "severity": "High",
        "images": [
            "assets/images/disease_d54_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d54",
            "preventiveMeasures": [
                "Avoid bruising",
                "Cool storage"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Chlorination",
                    "tradeName": "Chlorine",
                    "type": "Disinfectant",
                    "dosage": "100ppm",
                    "applicationMethod": "Wash",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d55",
        "plantId": "18",
        "name": "Downy Mildew",
        "type": "Fungal",
        "symptoms": [
            "Violet growth",
            "Yellow spotting",
            "Collapse of leaves"
        ],
        "causes": "Peronospora destructor",
        "severity": "High",
        "images": [
            "assets/images/disease_d55_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d55",
            "preventiveMeasures": [
                "Rotation",
                "Drainage"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane",
                    "type": "Fungicide",
                    "dosage": "2.5g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d56",
        "plantId": "18",
        "name": "Onion Smut",
        "type": "Fungal",
        "symptoms": [
            "Black streaks",
            "Bending leaves",
            "Bulb/seedling death"
        ],
        "causes": "Urocystis cepulae",
        "severity": "High",
        "images": [
            "assets/images/disease_d56_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d56",
            "preventiveMeasures": [
                "Seed treatment",
                "Rotation"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Thiram",
                    "tradeName": "Thiram",
                    "type": "Fungicide",
                    "dosage": "3g/kg seed",
                    "applicationMethod": "Seed coat",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d57",
        "plantId": "19",
        "name": "Clubroot",
        "type": "Fungallike",
        "symptoms": [
            "Swollen roots",
            "Wilting day",
            "Stunted"
        ],
        "causes": "Plasmodiophora brassicae",
        "severity": "High",
        "images": [
            "assets/images/disease_d57_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d57",
            "preventiveMeasures": [
                "Raise pH (Lime)",
                "Rotation"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Pentachloronitrobenzene",
                    "tradeName": "PCNB",
                    "type": "Fungicide",
                    "dosage": "Soil app",
                    "applicationMethod": "Drench",
                    "safetyPrecautions": "Toxic"
                }
            ]
        }
    },
    {
        "id": "d58",
        "plantId": "19",
        "name": "Downy Mildew",
        "type": "Fungal",
        "symptoms": [
            "Yellow areas",
            "Gray mold underside",
            "Black spots"
        ],
        "causes": "Peronospora parasitica",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d58_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d58",
            "preventiveMeasures": [
                "Air circulation",
                "Resistant varieties"
            ],
            "organicRemedies": [],
            "chemicalMedicines": [
                {
                    "name": "Mancozeb",
                    "tradeName": "Dithane",
                    "type": "Fungicide",
                    "dosage": "2g/L",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Mask"
                }
            ]
        }
    },
    {
        "id": "d59",
        "plantId": "20",
        "name": "Bacterial Spot",
        "type": "Bacterial",
        "symptoms": [
            "Small water soaked spots",
            "Scabs",
            "Leaf drop"
        ],
        "causes": "Xanthomonas campestris",
        "severity": "High",
        "images": [
            "assets/images/disease_d59_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d59",
            "preventiveMeasures": [
                "Clean seed",
                "Rotation"
            ],
            "organicRemedies": [
                "Copper"
            ],
            "chemicalMedicines": [
                {
                    "name": "Streptomycin",
                    "tradeName": "Plantomycin",
                    "type": "Antibiotic",
                    "dosage": "200ppm",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Gloves"
                }
            ]
        }
    },
    {
        "id": "d60",
        "plantId": "20",
        "name": "Pepper Mosaic Virus",
        "type": "Viral",
        "symptoms": [
            "Green/yellow mottling",
            "Distortion",
            "Stunted"
        ],
        "causes": "CMV/TMV",
        "severity": "Medium",
        "images": [
            "assets/images/disease_d60_0.jpg"
        ],
        "remedy": {
            "diseaseId": "d60",
            "preventiveMeasures": [
                "Aphid control",
                "Weed control"
            ],
            "organicRemedies": [
                "Neem oil"
            ],
            "chemicalMedicines": [
                {
                    "name": "Dimethoate",
                    "tradeName": "Rogor",
                    "type": "Insecticide",
                    "dosage": "1.5ml/liter",
                    "applicationMethod": "Spray",
                    "safetyPrecautions": "Toxic"
                }
            ]
        }
    }
]
''';
}
