import 'package:code_gen/models/todo_entity.dart';

abstract class BaseTodoRepository {
  Future<TodoEntity> getTodo(String id);
}
