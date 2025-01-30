class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory TodoModel.mapJson(Map json) {
    return TodoModel(
      completed: json['completed'],
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
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
