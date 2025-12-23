import 'package:fpdart/fpdart.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/disease.dart';
import '../repositories/plant_repository.dart';

class GetDiseasesByPlantId implements UseCase<List<Disease>, String> {
  final PlantRepository repository;

  GetDiseasesByPlantId(this.repository);

  @override
  Future<Either<Failure, List<Disease>>> call(String plantId) async {
    return await repository.getDiseasesByPlantId(plantId);
  }
}
