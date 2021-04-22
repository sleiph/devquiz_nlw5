import 'package:devquiz_nlw5/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final double valor;
  const ChartWidget({
    Key? key,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 72,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: valor,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
              child: Text('${(valor * 100).toInt()}%',
                  style: AppTextStyles.heading)),
        ],
      ),
    );
  }
}
