import 'dart:convert';

import 'models.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get parse => {
        "Fácil": Level.facil,
        "Médio": Level.medio,
        "Difícil": Level.dificil,
        "Perito": Level.perito
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "Fácil",
        Level.medio: "Médio",
        Level.dificil: "Difícil",
        Level.perito: "Perito"
      }[this]!;
}

class QuizModel {
  final String title;
  final String image;
  final Level level;
  final int questionAnswered;
  final List<QuestionModel> questions;

  QuizModel({
    required this.title,
    required this.image,
    required this.level,
    this.questionAnswered = 0,
    required this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'level': level.parse,
      'questionAnswered': questionAnswered,
      'questions': questions.map((x) => x.toMap()).toList(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      image: map['image'],
      level: map['level'].toString().parse,
      questionAnswered: map['questionAnswered'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
