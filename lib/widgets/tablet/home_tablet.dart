import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_niab/widgets/typing_animation.dart';

import '../../constants/colors.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение ширины экрана
    final screenHeight = screenSize.height;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
            top: Radius.zero, bottom: Radius.circular(45)),
        image: DecorationImage(
            image: AssetImage('assets/background/background.png'),
            fit: BoxFit.cover),
      ),
      height: 805,
      width: screenWidth,
      constraints: const BoxConstraints(minHeight: 390, minWidth: 480),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            // padding: const EdgeInsets.only(left: 50,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: screenWidth / 1.2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        CustomColor.gradientBlue,
                        CustomColor.gradientTial,
                      ],
                    ),
                  ),
                  child: Text(
                    "Добро пожаловать на мой сайт портфолио",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Я Никита Абраменко",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: -3,
                  ),
                ),
                //Анимация текста
                const TypingAnimation(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenWidth / 1.2,
                  child: Text(
                    "Разработчик, увлеченный созданием мобильных и веб-приложений. Сфокусировавшись на Android и Flutter, я разрабатываю эффективные и красивые решения.",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: screenWidth/2.3,
                  child: Lottie.asset("assets/lottie/computer.json"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
