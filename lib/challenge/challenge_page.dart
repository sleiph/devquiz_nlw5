import 'package:devquiz_nlw5/challenge/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(
        title: "Principais funções do Flutter :)",
      ),
    );
  }
}
