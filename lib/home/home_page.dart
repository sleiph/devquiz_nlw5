import 'package:devquiz_nlw5/core/core.dart';
import 'package:devquiz_nlw5/home/widgets/app_bar.dart';
import 'package:devquiz_nlw5/home/widgets/level_button.dart';
import 'package:devquiz_nlw5/home/widgets/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: "Fácil"),
                  LevelButtonWidget(label: "Médio"),
                  LevelButtonWidget(label: "Difícil"),
                  LevelButtonWidget(label: "Perito"),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    QuizCardWidget(
                      title: "Gerenciamento de Estado",
                      image: AppImages.blocks
                    ),
                    QuizCardWidget(
                      title: "Construindo Interfaces",
                      image: AppImages.laptop
                    ),
                    QuizCardWidget(
                      title: "Integração Nativa",
                      image: AppImages.hierarchy
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
