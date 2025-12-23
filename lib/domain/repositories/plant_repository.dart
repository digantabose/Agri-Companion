import 'package:fpdart/fpdart.dart';
import '../../core/errors/failures.dart';
import '../entities/plant.dart';
import '../entities/disease.dart';

abstract class PlantRepository {
  Future<Either<Failure, List<Plant>>> getPlants();
  Future<Either<Failure, Plant>> getPlantById(String id);
  Future<Either<Failure, List<Disease>>> getDiseasesByPlantId(String plantId);
  Future<Either<Failure, Disease>> getDiseaseById(String id);
  Future<Either<Failure, List<Plant>>> searchPlants(String query);
}
