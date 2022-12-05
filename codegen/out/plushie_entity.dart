import 'package:freezed_annotation/freezed_annotation.dart';
part 'plushie_entity.freezed.dart';
part 'plushie_entity.g.dart';

@freezed
class PlushieEntity with _$PlushieEntity {
  const factory PlushieEntity({
    required String id,
    required String name,
    required String manufacturer,
    required List<String> tags,
  }) = _PlushieEntity;

  factory PlushieEntity.fromJson(Map<String, Object?> json) =>
      _$PlushieEntityFromJson(json);
}
