// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiseaseModelAdapter extends TypeAdapter<DiseaseModel> {
  @override
  final int typeId = 1;

  @override
  DiseaseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiseaseModel(
      id: fields[0] as String,
      plantId: fields[1] as String,
      name: fields[2] as String,
      type: fields[3] as String,
      symptoms: (fields[4] as List).cast<String>(),
      causes: fields[5] as String,
      severity: fields[6] as String,
      images: (fields[7] as List).cast<String>(),
      remedy: fields[8] as RemedyModel?,
    );
  }

  @override
  void write(BinaryWriter writer, DiseaseModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.plantId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.symptoms)
      ..writeByte(5)
      ..write(obj.causes)
      ..writeByte(6)
      ..write(obj.severity)
      ..writeByte(7)
      ..write(obj.images)
      ..writeByte(8)
      ..write(obj.remedy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiseaseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseModel _$DiseaseModelFromJson(Map<String, dynamic> json) => DiseaseModel(
      id: json['id'] as String,
      plantId: json['plantId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      causes: json['causes'] as String,
      severity: json['severity'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      remedy: json['remedy'] == null
          ? null
          : RemedyModel.fromJson(json['remedy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiseaseModelToJson(DiseaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plantId': instance.plantId,
      'name': instance.name,
      'type': instance.type,
      'symptoms': instance.symptoms,
      'causes': instance.causes,
      'severity': instance.severity,
      'images': instance.images,
      'remedy': instance.remedy?.toJson(),
    };
