import 'package:devquiz_nlw5/challenge/challenge_page.dart';
import 'package:devquiz_nlw5/core/core.dart';
import 'home.dart';
import 'widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    LevelButtonWidget(label: 'Fácil'),
                    SizedBox(width: 10),
                    LevelButtonWidget(label: 'Médio'),
                    SizedBox(width: 10),
                    LevelButtonWidget(label: 'Difícil'),
                    SizedBox(width: 10),
                    LevelButtonWidget(label: 'Perito'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizes!
                      .map(
                        (e) => QuizCardWidget(
                          title: e.title,
                          completed:
                              '${e.questionAnswered}/${e.questions.length}',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ChallengePage(questions: e.questions),
                                ));
                          },
                          percent: e.questionAnswered / e.questions.length,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
