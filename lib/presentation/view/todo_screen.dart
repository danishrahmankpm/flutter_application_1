import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/presentation/provider/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsync = ref.watch(todosProvider);
    print("app started"); 

    return Scaffold(
      appBar: AppBar(title: Text("Todos")),
      body: todosAsync.when(
        data: (todos) {
          print(todos);
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(todo.title ?? ''),
                trailing: Icon(
                  todo.completed ?? false
                      ? Icons.check_circle
                      : Icons.circle_outlined,
                ),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text("Error: $e")),
      ),
    );
  }
}