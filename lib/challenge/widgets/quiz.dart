import 'widgets.dart';
import 'package:devquiz_nlw5/core/core.dart';
import 'package:devquiz_nlw5/shared/models/models.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  QuizWidget({Key? key, required this.question, required this.onSelected})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int selecteIndex = -1;

  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            this.widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
              answerModel: answer(i),
              disabled: selecteIndex != -1,
              isSelected: selecteIndex == i,
              onTap: (value) {
                selecteIndex = i;
                setState(() {});
                Future.delayed(Duration(milliseconds: 500))
                    .then((_) => widget.onSelected(value));
              },
            ),
        ],
      ),
    );
  }
}
