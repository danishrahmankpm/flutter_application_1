import 'package:dio/dio.dart';

import 'package:flutter_application_1/data/api/todo_api.dart';
import 'package:flutter_application_1/data/repository/todo_repository.dart';
import 'package:flutter_application_1/domain/todo_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  return Dio();
}

@riverpod
TodoApi todoApi(Ref ref) {
  return TodoApi(ref.watch(dioProvider));
}
@riverpod
TodoRepository todoRepository(Ref ref) {
  return TodoRepository(ref.watch(todoApiProvider));
}
@riverpod
Future<List<TodoEntity>> todos(Ref ref) {
  final repo = ref.watch(todoRepositoryProvider);
  return repo.getTodos();
}