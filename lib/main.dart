import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/router/app_router.dart';
import 'presentation/providers/plant_provider.dart';
import 'data/models/plant_model.dart';
import 'data/models/disease_model.dart';
import 'data/models/remedy_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  
  // Register Adapters
  Hive.registerAdapter(PlantModelAdapter());
  Hive.registerAdapter(DiseaseModelAdapter());
  Hive.registerAdapter(RemedyModelAdapter());
  Hive.registerAdapter(MedicineModelAdapter()); // If separate adapter needed

  // Open Boxes
  final plantBox = await Hive.openBox<PlantModel>('plants');
  final diseaseBox = await Hive.openBox<DiseaseModel>('diseases');

  runApp(ProviderScope(
    overrides: [
      plantBoxProvider.overrideWithValue(plantBox),
      diseaseBoxProvider.overrideWithValue(diseaseBox),
    ],
    child: const AgriApp(),
  ));
}

class AgriApp extends StatelessWidget {
  const AgriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Agri Disease App',
      routerConfig: goRouterProvider,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Roboto', // Assuming Google Fonts added later or system default
      ),
    );
  }
}

