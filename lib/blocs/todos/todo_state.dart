import 'package:code_gen/models/todo_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial(bool isLoading) = TodoInitial;
  const factory TodoState.error(String message, bool isLoading) = TodoError;
  const factory TodoState.success(TodoEntity todo, bool isLoading) =
      TodoSuccess;
}
