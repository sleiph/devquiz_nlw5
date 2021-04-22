import 'dart:convert';

import 'package:devquiz_nlw5/shared/models/models.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }

  Future<List<QuizModel>> getQuizes() async {
    final response = await rootBundle.loadString("assets/database/quizes.json");
    final list = jsonDecode(response) as List;
    final quizes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizes;
  }
}
