import 'package:code_gen/repositories/todos/todo_repository.dart';
import 'package:code_gen/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/todos/todo_bloc.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<TodoRepository>.value(
          value: TodoRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TodoBloc>(
            create: (context) => TodoBloc(
              context.read<TodoRepository>(),
            ),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}
