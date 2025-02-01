class FrasesModel {
  final String frase;
  final String autor;

  FrasesModel({required this.frase, required this.autor});

  factory FrasesModel.fromJson(Map<String, dynamic> json) {
    return FrasesModel(
      frase: json['quote'],
      autor: json['author'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'author': autor,
      'quote': frase,
    };
  }
}
