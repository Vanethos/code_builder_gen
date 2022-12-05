// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plushie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlushieEntity _$$_PlushieEntityFromJson(Map<String, dynamic> json) =>
    _$_PlushieEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      manufacturer: json['manufacturer'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PlushieEntityToJson(_$_PlushieEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'manufacturer': instance.manufacturer,
      'tags': instance.tags,
    };
