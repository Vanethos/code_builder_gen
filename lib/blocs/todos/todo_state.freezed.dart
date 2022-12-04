// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(String message, bool isLoading) error,
    required TResult Function(TodoEntity todo, bool isLoading) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(String message, bool isLoading)? error,
    TResult? Function(TodoEntity todo, bool isLoading)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(String message, bool isLoading)? error,
    TResult Function(TodoEntity todo, bool isLoading)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoError value) error,
    required TResult Function(TodoSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitial value)? initial,
    TResult? Function(TodoError value)? error,
    TResult? Function(TodoSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoError value)? error,
    TResult Function(TodoSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoInitialCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoInitialCopyWith(
          _$TodoInitial value, $Res Function(_$TodoInitial) then) =
      __$$TodoInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$TodoInitialCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoInitial>
    implements _$$TodoInitialCopyWith<$Res> {
  __$$TodoInitialCopyWithImpl(
      _$TodoInitial _value, $Res Function(_$TodoInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$TodoInitial(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoInitial implements TodoInitial {
  const _$TodoInitial(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TodoState.initial(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoInitial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoInitialCopyWith<_$TodoInitial> get copyWith =>
      __$$TodoInitialCopyWithImpl<_$TodoInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(String message, bool isLoading) error,
    required TResult Function(TodoEntity todo, bool isLoading) success,
  }) {
    return initial(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(String message, bool isLoading)? error,
    TResult? Function(TodoEntity todo, bool isLoading)? success,
  }) {
    return initial?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(String message, bool isLoading)? error,
    TResult Function(TodoEntity todo, bool isLoading)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoError value) error,
    required TResult Function(TodoSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitial value)? initial,
    TResult? Function(TodoError value)? error,
    TResult? Function(TodoSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoError value)? error,
    TResult Function(TodoSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodoInitial implements TodoState {
  const factory TodoInitial(final bool isLoading) = _$TodoInitial;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TodoInitialCopyWith<_$TodoInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoErrorCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$TodoErrorCopyWith(
          _$TodoError value, $Res Function(_$TodoError) then) =
      __$$TodoErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isLoading});
}

/// @nodoc
class __$$TodoErrorCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoError>
    implements _$$TodoErrorCopyWith<$Res> {
  __$$TodoErrorCopyWithImpl(
      _$TodoError _value, $Res Function(_$TodoError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isLoading = null,
  }) {
    return _then(_$TodoError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoError implements TodoError {
  const _$TodoError(this.message, this.isLoading);

  @override
  final String message;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TodoState.error(message: $message, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoErrorCopyWith<_$TodoError> get copyWith =>
      __$$TodoErrorCopyWithImpl<_$TodoError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(String message, bool isLoading) error,
    required TResult Function(TodoEntity todo, bool isLoading) success,
  }) {
    return error(message, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(String message, bool isLoading)? error,
    TResult? Function(TodoEntity todo, bool isLoading)? success,
  }) {
    return error?.call(message, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(String message, bool isLoading)? error,
    TResult Function(TodoEntity todo, bool isLoading)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoError value) error,
    required TResult Function(TodoSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitial value)? initial,
    TResult? Function(TodoError value)? error,
    TResult? Function(TodoSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoError value)? error,
    TResult Function(TodoSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoError implements TodoState {
  const factory TodoError(final String message, final bool isLoading) =
      _$TodoError;

  String get message;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TodoErrorCopyWith<_$TodoError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoSuccessCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoSuccessCopyWith(
          _$TodoSuccess value, $Res Function(_$TodoSuccess) then) =
      __$$TodoSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoEntity todo, bool isLoading});

  $TodoEntityCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoSuccessCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoSuccess>
    implements _$$TodoSuccessCopyWith<$Res> {
  __$$TodoSuccessCopyWithImpl(
      _$TodoSuccess _value, $Res Function(_$TodoSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? isLoading = null,
  }) {
    return _then(_$TodoSuccess(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res> get todo {
    return $TodoEntityCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoSuccess implements TodoSuccess {
  const _$TodoSuccess(this.todo, this.isLoading);

  @override
  final TodoEntity todo;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TodoState.success(todo: $todo, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSuccess &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoSuccessCopyWith<_$TodoSuccess> get copyWith =>
      __$$TodoSuccessCopyWithImpl<_$TodoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(String message, bool isLoading) error,
    required TResult Function(TodoEntity todo, bool isLoading) success,
  }) {
    return success(todo, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(String message, bool isLoading)? error,
    TResult? Function(TodoEntity todo, bool isLoading)? success,
  }) {
    return success?.call(todo, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(String message, bool isLoading)? error,
    TResult Function(TodoEntity todo, bool isLoading)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(todo, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoError value) error,
    required TResult Function(TodoSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitial value)? initial,
    TResult? Function(TodoError value)? error,
    TResult? Function(TodoSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoError value)? error,
    TResult Function(TodoSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TodoSuccess implements TodoState {
  const factory TodoSuccess(final TodoEntity todo, final bool isLoading) =
      _$TodoSuccess;

  TodoEntity get todo;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TodoSuccessCopyWith<_$TodoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
