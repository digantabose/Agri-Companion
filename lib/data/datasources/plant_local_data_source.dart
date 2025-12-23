import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/plant_model.dart';
import '../models/disease_model.dart';
import '../../core/errors/failures.dart';
import 'seed_data.dart';

abstract class PlantLocalDataSource {
  Future<List<PlantModel>> getPlants();
  Future<List<DiseaseModel>> getDiseases();
  Future<void> cachePlants(List<PlantModel> plants);
  Future<void> cacheDiseases(List<DiseaseModel> diseases);
}

class PlantLocalDataSourceImpl implements PlantLocalDataSource {
  final Box<PlantModel> plantBox;
  final Box<DiseaseModel> diseaseBox;

  PlantLocalDataSourceImpl({
    required this.plantBox,
    required this.diseaseBox,
  });

  @override
  Future<List<PlantModel>> getPlants() async {
    // Forced re-seed for development updates
    if (true || plantBox.isEmpty) {
      await _seedData();
    }
    return plantBox.values.toList();
  }

  @override
  Future<List<DiseaseModel>> getDiseases() async {
    // Ensuring basic seed if empty
    if (diseaseBox.isEmpty && plantBox.isEmpty) {
      await _seedData();
    }
    return diseaseBox.values.toList();
  }

  Future<void> _seedData() async {
    try {
      // Decode Seed Data
      final List<dynamic> plantsJson = jsonDecode(SeedData.plantsJson);
      final List<dynamic> diseasesJson = jsonDecode(SeedData.diseasesJson);

      final plants = plantsJson.map((e) => PlantModel.fromJson(e)).toList();
      final diseases =
          diseasesJson.map((e) => DiseaseModel.fromJson(e)).toList();

      await cachePlants(plants);
      await cacheDiseases(diseases);
    } catch (e) {
      throw const CacheFailure('Failed to seed data');
    }
  }

  @override
  Future<void> cachePlants(List<PlantModel> plants) async {
    await plantBox.clear();
    await plantBox.addAll(plants);
  }

  @override
  Future<void> cacheDiseases(List<DiseaseModel> diseases) async {
    await diseaseBox.clear();
    await diseaseBox.addAll(diseases);
  }
}
