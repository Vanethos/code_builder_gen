// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plushie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlushieEntity _$PlushieEntityFromJson(Map<String, dynamic> json) {
  return _PlushieEntity.fromJson(json);
}

/// @nodoc
mixin _$PlushieEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlushieEntityCopyWith<PlushieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlushieEntityCopyWith<$Res> {
  factory $PlushieEntityCopyWith(
          PlushieEntity value, $Res Function(PlushieEntity) then) =
      _$PlushieEntityCopyWithImpl<$Res, PlushieEntity>;
  @useResult
  $Res call({String id, String name, String manufacturer, List<String> tags});
}

/// @nodoc
class _$PlushieEntityCopyWithImpl<$Res, $Val extends PlushieEntity>
    implements $PlushieEntityCopyWith<$Res> {
  _$PlushieEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? manufacturer = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlushieEntityCopyWith<$Res>
    implements $PlushieEntityCopyWith<$Res> {
  factory _$$_PlushieEntityCopyWith(
          _$_PlushieEntity value, $Res Function(_$_PlushieEntity) then) =
      __$$_PlushieEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String manufacturer, List<String> tags});
}

/// @nodoc
class __$$_PlushieEntityCopyWithImpl<$Res>
    extends _$PlushieEntityCopyWithImpl<$Res, _$_PlushieEntity>
    implements _$$_PlushieEntityCopyWith<$Res> {
  __$$_PlushieEntityCopyWithImpl(
      _$_PlushieEntity _value, $Res Function(_$_PlushieEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? manufacturer = null,
    Object? tags = null,
  }) {
    return _then(_$_PlushieEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlushieEntity implements _PlushieEntity {
  const _$_PlushieEntity(
      {required this.id,
      required this.name,
      required this.manufacturer,
      required final List<String> tags})
      : _tags = tags;

  factory _$_PlushieEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PlushieEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String manufacturer;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'PlushieEntity(id: $id, name: $name, manufacturer: $manufacturer, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlushieEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, manufacturer,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlushieEntityCopyWith<_$_PlushieEntity> get copyWith =>
      __$$_PlushieEntityCopyWithImpl<_$_PlushieEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlushieEntityToJson(
      this,
    );
  }
}

abstract class _PlushieEntity implements PlushieEntity {
  const factory _PlushieEntity(
      {required final String id,
      required final String name,
      required final String manufacturer,
      required final List<String> tags}) = _$_PlushieEntity;

  factory _PlushieEntity.fromJson(Map<String, dynamic> json) =
      _$_PlushieEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get manufacturer;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_PlushieEntityCopyWith<_$_PlushieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
