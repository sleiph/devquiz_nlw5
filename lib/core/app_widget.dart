//import 'package:devquiz_nlw5/challenge/challenge_page.dart';
import 'package:devquiz_nlw5/home/home.dart';
//import 'package:devquiz_nlw5/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: HomePage(),
      //home: ChallengePage(),
    );
  }
}
