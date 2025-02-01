import 'package:autor_frases/app/models/json_models.dart';
import 'package:dio/dio.dart';

class FrasesRepository {
  final dio = Dio();
  final String url = '/api/quotes/random';

  Future fetch() async {
    final response = await dio.get(url);
    final list = await response.data;


  }
}
