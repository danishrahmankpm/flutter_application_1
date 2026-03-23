import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/todo_model.dart';

part 'todo_api.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class TodoApi {
  factory TodoApi(Dio dio, {String baseUrl}) = _TodoApi;

  @GET("/todos")
  Future<List<TodoModel>> getTodos();
}