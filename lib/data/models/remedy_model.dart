import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/remedy.dart';

part 'remedy_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable(explicitToJson: true)
class RemedyModel extends Remedy {
  @HiveField(0)
  final String diseaseId;
  
  @HiveField(1)
  final List<String> preventiveMeasures;
  
  @HiveField(2)
  final List<String> organicRemedies;
  
  @HiveField(3)
  final List<MedicineModel> chemicalMedicines;

  const RemedyModel({
    required this.diseaseId,
    required this.preventiveMeasures,
    required this.organicRemedies,
    required this.chemicalMedicines,
  }) : super(
          diseaseId: diseaseId,
          preventiveMeasures: preventiveMeasures,
          organicRemedies: organicRemedies,
          chemicalMedicines: chemicalMedicines,
        );

  factory RemedyModel.fromJson(Map<String, dynamic> json) =>
      _$RemedyModelFromJson(json);

  Map<String, dynamic> toJson() => _$RemedyModelToJson(this);
  
  factory RemedyModel.fromEntity(Remedy remedy) {
    return RemedyModel(
      diseaseId: remedy.diseaseId,
      preventiveMeasures: remedy.preventiveMeasures,
      organicRemedies: remedy.organicRemedies,
      chemicalMedicines: remedy.chemicalMedicines
          .map((e) => MedicineModel.fromEntity(e))
          .toList(),
    );
  }
}

@HiveType(typeId: 3)
@JsonSerializable()
class MedicineModel extends Medicine {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String tradeName;
  @HiveField(2)
  final String type;
  @HiveField(3)
  final String dosage;
  @HiveField(4)
  final String applicationMethod;
  @HiveField(5)
  final String safetyPrecautions;

  const MedicineModel({
    required this.name,
    required this.tradeName,
    required this.type,
    required this.dosage,
    required this.applicationMethod,
    required this.safetyPrecautions,
  }) : super(
          name: name,
          tradeName: tradeName,
          type: type,
          dosage: dosage,
          applicationMethod: applicationMethod,
          safetyPrecautions: safetyPrecautions,
        );

  factory MedicineModel.fromJson(Map<String, dynamic> json) =>
      _$MedicineModelFromJson(json);

  Map<String, dynamic> toJson() => _$MedicineModelToJson(this);

  factory MedicineModel.fromEntity(Medicine medicine) {
    return MedicineModel(
      name: medicine.name,
      tradeName: medicine.tradeName,
      type: medicine.type,
      dosage: medicine.dosage,
      applicationMethod: medicine.applicationMethod,
      safetyPrecautions: medicine.safetyPrecautions,
    );
  }
}
