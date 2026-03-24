import 'package:flutter_application_1/data/api/todo_api.dart';
import 'package:flutter_application_1/domain/todo_entity.dart';

class TodoRepository {

  final TodoApi api;

  TodoRepository(this.api);
  
  Future<List<TodoEntity>> getTodos() async{
    final models=await api.getTodos();

    return models.map((m){
      return TodoEntity(
        userId: m.userId,
        id: m.id,
        title: m.title,
        completed: m.isCompleted,
      );
    }).toList();
  }
}
