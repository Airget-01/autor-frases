import 'package:autor_frases/app/repository/requisitar_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Deve retornar as dados da API',
    () async {
      final build = FrasesBuild();
      final resultado = await build.fetch(); // Use await para aguardar o Future

      expect(resultado, isNotNull);
      expect(resultado!['frase'],
          isNotEmpty);
      expect(resultado['autor'], isNotEmpty);

      print(resultado['autor']);
      print(resultado['frase']);
    },
  );
}
