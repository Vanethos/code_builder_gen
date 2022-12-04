import 'package:code_gen/blocs/todos/bloc.dart';
import 'package:code_gen/blocs/todos/todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _getTodo() {
    context.read<TodoBloc>().add(
          const TodoEvent.getTodo('1'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'TODO Data:',
            ),
            BlocBuilder<TodoBloc, TodoState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return state.when(
                  initial: (_) => Container(),
                  error: (message, _) => Text(message),
                  success: (todo, _) => Text(todo.title),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getTodo,
        tooltip: 'Get Todo',
        child: const Icon(Icons.check),
      ),
    );
  }
}
