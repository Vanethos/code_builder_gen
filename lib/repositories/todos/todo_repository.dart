import 'dart:convert';

import 'package:code_gen/models/todo_entity.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  @override
  Future<TodoEntity> getTodo(String id) {
    return http
        .post(
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
