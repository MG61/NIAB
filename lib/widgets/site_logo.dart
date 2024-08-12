import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, required this.onTap});
  final VoidCallback? onTap; //Обьявление нажатия

  @override
  Widget build(BuildContext context) {
    return GestureDetector( //Детектор жестов
      onTap: onTap,

      //Текст;
      child: const Text("Nikabris",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: CustomColor.blue_donut,
        ),
      ),
    );
  }
}
