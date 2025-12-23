import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../data/datasources/plant_local_data_source.dart';
import '../../data/models/plant_model.dart';
import '../../data/models/disease_model.dart';
import '../../data/repositories/plant_repository_impl.dart';
import '../../domain/repositories/plant_repository.dart';
import '../../domain/usecases/get_plants.dart';
import '../../domain/usecases/get_diseases_by_plant_id.dart';
import '../../domain/entities/plant.dart';
import '../../domain/entities/disease.dart';
import '../../core/usecases/usecase.dart';

// Data Sources
final plantBoxProvider = Provider<Box<PlantModel>>((ref) {
  throw UnimplementedError('Initialize Hive boxes first');
});

final diseaseBoxProvider = Provider<Box<DiseaseModel>>((ref) {
  throw UnimplementedError('Initialize Hive boxes first');
});

final plantLocalDataSourceProvider = Provider<PlantLocalDataSource>((ref) {
  return PlantLocalDataSourceImpl(
    plantBox: ref.watch(plantBoxProvider),
    diseaseBox: ref.watch(diseaseBoxProvider),
  );
});

// Repository
final plantRepositoryProvider = Provider<PlantRepository>((ref) {
  return PlantRepositoryImpl(ref.watch(plantLocalDataSourceProvider));
});

// UseCases
final getPlantsUseCaseProvider = Provider<GetPlants>((ref) {
  return GetPlants(ref.watch(plantRepositoryProvider));
});

final getDiseasesByPlantIdUseCaseProvider =
    Provider<GetDiseasesByPlantId>((ref) {
  return GetDiseasesByPlantId(ref.watch(plantRepositoryProvider));
});

// Logic Providers
final plantListProvider = FutureProvider<List<Plant>>((ref) async {
  final useCase = ref.watch(getPlantsUseCaseProvider);
  final result = await useCase(NoParams());
  return result.fold(
    (failure) => throw failure,
    (plants) => plants,
  );
});

final diseaseListProvider =
    FutureProvider.family<List<Disease>, String>((ref, plantId) async {
  final useCase = ref.watch(getDiseasesByPlantIdUseCaseProvider);
  final result = await useCase(plantId);
  return result.fold(
    (failure) => throw failure,
    (diseases) => diseases,
  );
});

final selectedCategoryProvider = StateProvider<String>((ref) => 'All');

final filteredPlantListProvider = Provider<AsyncValue<List<Plant>>>((ref) {
  final plantListAsync = ref.watch(plantListProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);

  return plantListAsync.whenData((plants) {
    if (selectedCategory == 'All') {
      return plants;
    }
    return plants.where((plant) => plant.category == selectedCategory).toList();
  });
});

// Search Logic
final searchQueryProvider = StateProvider<String>((ref) => '');

final searchResultsProvider = FutureProvider<List<Plant>>((ref) async {
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty) return [];

  // We can use the repository directly or a usecase
  final repository = ref.watch(plantRepositoryProvider);
  final result = await repository.searchPlants(query);

  return result.fold(
    (failure) => throw failure,
    (plants) => plants,
  );
});
