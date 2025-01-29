import 'package:http/http.dart' as http;

void main(List<String> args) {
  fecth();
}

Future<void> fecth() async {
  String url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(url));
  print(response.body);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.MapJson(Map Json) {
    return Todo(
      completed: Json['completed'],
      userId: Json['userId'],
      id: Json['id'],
      title: Json['title'],
    );
  }
  Map toJson() {
    return {
      'id': id,
      'title': title,
      'userId': userId,
      'completed': completed,
    };
  }
}
