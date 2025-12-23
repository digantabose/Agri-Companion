import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/disease.dart';
import 'remedy_model.dart';

part 'disease_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable(explicitToJson: true)
class DiseaseModel extends Disease {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String plantId;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String type;
  @HiveField(4)
  final List<String> symptoms;
  @HiveField(5)
  final String causes;
  @HiveField(6)
  final String severity;
  @HiveField(7)
  final List<String> images;
  @HiveField(8)
  final RemedyModel? remedy;

  const DiseaseModel({
    required this.id,
    required this.plantId,
    required this.name,
    required this.type,
    required this.symptoms,
    required this.causes,
    required this.severity,
    required this.images,
    this.remedy,
  }) : super(
          id: id,
          plantId: plantId,
          name: name,
          type: type,
          symptoms: symptoms,
          causes: causes,
          severity: severity,
          images: images,
          remedy: remedy,
        );

  factory DiseaseModel.fromJson(Map<String, dynamic> json) =>
      _$DiseaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$DiseaseModelToJson(this);
  
  // ignore: annotate_overrides
  factory DiseaseModel.fromEntity(Disease disease) {
    return DiseaseModel(
      id: disease.id,
      plantId: disease.plantId,
      name: disease.name,
      type: disease.type,
      symptoms: disease.symptoms,
      causes: disease.causes,
      severity: disease.severity,
      images: disease.images,
      remedy: disease.remedy != null ? RemedyModel.fromEntity(disease.remedy!) : null,
    );
  }
}
