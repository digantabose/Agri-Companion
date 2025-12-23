// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RemedyModelAdapter extends TypeAdapter<RemedyModel> {
  @override
  final int typeId = 2;

  @override
  RemedyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RemedyModel(
      diseaseId: fields[0] as String,
      preventiveMeasures: (fields[1] as List).cast<String>(),
      organicRemedies: (fields[2] as List).cast<String>(),
      chemicalMedicines: (fields[3] as List).cast<MedicineModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, RemedyModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.diseaseId)
      ..writeByte(1)
      ..write(obj.preventiveMeasures)
      ..writeByte(2)
      ..write(obj.organicRemedies)
      ..writeByte(3)
      ..write(obj.chemicalMedicines);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RemedyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MedicineModelAdapter extends TypeAdapter<MedicineModel> {
  @override
  final int typeId = 3;

  @override
  MedicineModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicineModel(
      name: fields[0] as String,
      tradeName: fields[1] as String,
      type: fields[2] as String,
      dosage: fields[3] as String,
      applicationMethod: fields[4] as String,
      safetyPrecautions: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MedicineModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.tradeName)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.dosage)
      ..writeByte(4)
      ..write(obj.applicationMethod)
      ..writeByte(5)
      ..write(obj.safetyPrecautions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicineModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemedyModel _$RemedyModelFromJson(Map<String, dynamic> json) => RemedyModel(
      diseaseId: json['diseaseId'] as String,
      preventiveMeasures: (json['preventiveMeasures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      organicRemedies: (json['organicRemedies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      chemicalMedicines: (json['chemicalMedicines'] as List<dynamic>)
          .map((e) => MedicineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemedyModelToJson(RemedyModel instance) =>
    <String, dynamic>{
      'diseaseId': instance.diseaseId,
      'preventiveMeasures': instance.preventiveMeasures,
      'organicRemedies': instance.organicRemedies,
      'chemicalMedicines':
          instance.chemicalMedicines.map((e) => e.toJson()).toList(),
    };

MedicineModel _$MedicineModelFromJson(Map<String, dynamic> json) =>
    MedicineModel(
      name: json['name'] as String,
      tradeName: json['tradeName'] as String,
      type: json['type'] as String,
      dosage: json['dosage'] as String,
      applicationMethod: json['applicationMethod'] as String,
      safetyPrecautions: json['safetyPrecautions'] as String,
    );

Map<String, dynamic> _$MedicineModelToJson(MedicineModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tradeName': instance.tradeName,
      'type': instance.type,
      'dosage': instance.dosage,
      'applicationMethod': instance.applicationMethod,
      'safetyPrecautions': instance.safetyPrecautions,
    };
