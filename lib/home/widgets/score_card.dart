import 'package:devquiz_nlw5/core/core.dart';
import 'widgets.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  final double valor;
  const ScoreCardWidget({
    Key? key,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(valor: valor),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vamos começar',
                          style: AppTextStyles.heading,
                        ),
                        Text(
                          'Complete desafios, busque conhecimento :)',
                          style: AppTextStyles.body,
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
