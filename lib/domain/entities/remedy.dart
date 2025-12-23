import 'package:equatable/equatable.dart';

class Remedy extends Equatable {
  final String diseaseId;
  final List<String> preventiveMeasures;
  final List<String> organicRemedies;
  final List<Medicine> chemicalMedicines;

  const Remedy({
    required this.diseaseId,
    required this.preventiveMeasures,
    required this.organicRemedies,
    required this.chemicalMedicines,
  });

  @override
  List<Object?> get props => [diseaseId, preventiveMeasures, organicRemedies, chemicalMedicines];
}

class Medicine extends Equatable {
  final String name;
  final String tradeName;
  final String type;
  final String dosage;
  final String applicationMethod;
  final String safetyPrecautions;

  const Medicine({
    required this.name,
    required this.tradeName,
    required this.type,
    required this.dosage,
    required this.applicationMethod,
    required this.safetyPrecautions,
  });

  @override
  List<Object?> get props => [name, tradeName, type, dosage, applicationMethod, safetyPrecautions];
}
