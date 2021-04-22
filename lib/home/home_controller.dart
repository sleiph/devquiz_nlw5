import 'home.dart';
import 'package:devquiz_nlw5/shared/models/models.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizes = await repository.getQuizes();
    state = HomeState.success;
  }
}
