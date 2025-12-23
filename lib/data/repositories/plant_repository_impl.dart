import 'package:fpdart/fpdart.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/plant.dart';
import '../../domain/entities/disease.dart';
import '../../domain/repositories/plant_repository.dart';
import '../datasources/plant_local_data_source.dart';

class PlantRepositoryImpl implements PlantRepository {
  final PlantLocalDataSource dataSource;

  PlantRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<Plant>>> getPlants() async {
    try {
      final result = await dataSource.getPlants();
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Plant>> getPlantById(String id) async {
    try {
      final plants = await dataSource.getPlants();
      final plant = plants.firstWhere((element) => element.id == id);
      return Right(plant);
    } catch (e) {
      return Left(CacheFailure("Plant not found"));
    }
  }

  @override
  Future<Either<Failure, List<Disease>>> getDiseasesByPlantId(String plantId) async {
    try {
      final diseases = await dataSource.getDiseases();
      final filtered = diseases.where((element) => element.plantId == plantId).toList();
      return Right(filtered);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Disease>> getDiseaseById(String id) async {
    try {
      final diseases = await dataSource.getDiseases();
      final disease = diseases.firstWhere((element) => element.id == id);
      return Right(disease);
    } catch (e) {
      return Left(CacheFailure("Disease not found"));
    }
  }

  @override
  Future<Either<Failure, List<Plant>>> searchPlants(String query) async {
    try {
      final plants = await dataSource.getPlants();
      final filtered = plants.where((plant) {
        return plant.name.toLowerCase().contains(query.toLowerCase()) ||
            plant.scientificName.toLowerCase().contains(query.toLowerCase());
      }).toList();
      return Right(filtered);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
