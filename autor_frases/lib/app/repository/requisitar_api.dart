// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class FrasesRepository {
  final dio = Dio();
  final String url = 'https://api.quotable.io/random';

  Future<Map<dynamic, dynamic>?> fetch() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        final frase = data.quote;
        final autor = data.author;
        print(frase);
        print(autor);

        return {'frase' : frase,'autor' :autor};
      } else {
        print(
            'não foi possível adquirir resposta da API, ERRO${response.statusCode}');
      }
    } catch (e) {
      print('Erro $e');
    }
    return null;
  }
}
