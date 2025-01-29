import 'package:http/http.dart' as http;
void main(List<String> args) {
  fecth();
}
Future <void> fecth() async {
  String url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(url));
  print(response.body);
}
