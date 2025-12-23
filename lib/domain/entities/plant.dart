import 'package:equatable/equatable.dart';

class Plant extends Equatable {
  final String id;
  final String name;
  final String scientificName;
  final String category;
  final String description;
  final String climate;
  final String soilType;
  final String season;
  final List<String> images;

  const Plant({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.category,
    required this.description,
    required this.climate,
    required this.soilType,
    required this.season,
    required this.images,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        scientificName,
        category,
        description,
        climate,
        soilType,
        season,
        images,
      ];
}
