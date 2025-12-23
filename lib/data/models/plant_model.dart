import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/plant.dart';

part 'plant_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class PlantModel extends Plant {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String scientificName;
  @HiveField(3)
  final String category;
  @HiveField(4)
  final String description;
  @HiveField(5)
  final String climate;
  @HiveField(6)
  final String soilType;
  @HiveField(7)
  final String season;
  @HiveField(8)
  final List<String> images;

  const PlantModel({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.category,
    required this.description,
    required this.climate,
    required this.soilType,
    required this.season,
    required this.images,
  }) : super(
          id: id,
          name: name,
          scientificName: scientificName,
          category: category,
          description: description,
          climate: climate,
          soilType: soilType,
          season: season,
          images: images,
        );

  factory PlantModel.fromJson(Map<String, dynamic> json) =>
      _$PlantModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlantModelToJson(this);

  factory PlantModel.fromEntity(Plant plant) {
    return PlantModel(
      id: plant.id,
      name: plant.name,
      scientificName: plant.scientificName,
      category: plant.category,
      description: plant.description,
      climate: plant.climate,
      soilType: plant.soilType,
      season: plant.season,
      images: plant.images,
    );
  }
}
