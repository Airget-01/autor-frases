import 'package:autor_frases/models/json_models.dart';
import 'package:dio/dio.dart';

class RepDio {
  final String url = 'https://jsonplaceholder.typicode.com/todos';
  final dio = Dio();

  Future fetch() async {
    final response = await dio.get(url);
    final list = response.data as List;

    List<TodoModel> todos = [];
    for (var json in list) {
      final todo = TodoModel.mapJson(json);
      todos.add(todo);
    }
    return todos;
  }
}
