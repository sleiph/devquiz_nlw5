import 'package:devquiz_nlw5/core/core.dart';
import 'package:devquiz_nlw5/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String image;
  const QuizCardWidget({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 23,
            child: Image.asset(image),
          ),
          SizedBox(height: 24),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  flex: 1, child: Text("3 de 10", style: AppTextStyles.body11)),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(value: 0.3),
              ),
            ],
          )
        ],
      ),
    );
  }
}
