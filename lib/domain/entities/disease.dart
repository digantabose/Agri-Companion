import 'package:equatable/equatable.dart';
import 'remedy.dart';

class Disease extends Equatable {
  final String id;
  final String plantId;
  final String name;
  final String type; // Fungal, Bacterial, Viral, Pest, Nutrient
  final List<String> symptoms;
  final String causes;
  final String severity; // Low, Medium, High
  final List<String> images;
  final Remedy? remedy;

  const Disease({
    required this.id,
    required this.plantId,
    required this.name,
    required this.type,
    required this.symptoms,
    required this.causes,
    required this.severity,
    required this.images,
    this.remedy,
  });

  @override
  List<Object?> get props => [
        id,
        plantId,
        name,
        type,
        symptoms,
        causes,
        severity,
        images,
        remedy,
      ];
}
