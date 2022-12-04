import 'dart:convert';

import 'package:code_gen/models/todo_entity.dart';
import 'package:code_gen/repositories/todos/base_todo_repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository extends BaseTodoRepository {
  @override
  Future<TodoEntity> getTodo(String id) {
    return http
        .get(
          Uri.parse(
            'https://jsonplaceholder.typicode.com/todos/$id',
          ),
        )
        .then(
          (value) => TodoEntity.fromJson(
            jsonDecode(value.body),
          ),
        );
  }
}
