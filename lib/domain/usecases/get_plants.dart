import 'package:fpdart/fpdart.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/plant.dart';
import '../repositories/plant_repository.dart';

class GetPlants implements UseCase<List<Plant>, NoParams> {
  final PlantRepository repository;

  GetPlants(this.repository);

  @override
  Future<Either<Failure, List<Plant>>> call(NoParams params) async {
    return await repository.getPlants();
  }
}
