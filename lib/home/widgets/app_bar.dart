import 'package:devquiz_nlw5/core/core.dart';
import 'package:devquiz_nlw5/home/widgets/score_card.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            width: double.maxFinite,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Olá, ', 
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: 'Ricardo Alves',
                        style: AppTextStyles.titleBold
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://avatars.githubusercontent.com/sleiph'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardWidget(),
          ),
        ],
      ),
    ),
  );
}
