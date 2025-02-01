import 'dart:convert';

class FrasesModel {
  final String quote;
  final String author;

  FrasesModel({
    required this.quote,
    required this.author,
  });

  factory FrasesModel.fromRawJson(String str) =>
      FrasesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FrasesModel.fromJson(Map<String, dynamic> json) => FrasesModel(
        quote: json["quote"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "quote": quote,
        "author": author,
      };
}
