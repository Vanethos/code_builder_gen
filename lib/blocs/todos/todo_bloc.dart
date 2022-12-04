import 'package:bloc/bloc.dart';
import 'package:code_gen/blocs/todos/todo_event.dart';
import 'package:code_gen/blocs/todos/todo_state.dart';
import 'package:code_gen/repositories/todos/base_todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final BaseTodoRepository repository;

  TodoBloc(this.repository) : super(const TodoState.initial(false)) {
    on<TodoGetTodo>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );

      final todo = await repository.getTodo(event.id);

      emit(
        TodoState.success(
          todo,
          false,
        ),
      );
    });
  }
}
