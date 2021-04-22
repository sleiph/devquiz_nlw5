import 'package:devquiz_nlw5/home/home.dart';
import 'package:devquiz_nlw5/shared/models/models.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizes() async {
    state = HomeState.loading;
    quizes = await repository.getQuizes();
    state = HomeState.success;
  }
}
