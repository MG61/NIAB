import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_niab/constants/colors.dart';
import 'package:portfolio_niab/widgets/card/card_allSkills.dart';
import 'package:portfolio_niab/widgets/hoverable_card.dart';

import '../../constants/items/bottomSkills_items.dart';
import '../../constants/items/skills_items.dart';
import '../card/card_skills.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение ширины экрана
    final screenHeight = screenSize.height;

    return Container(
      width: screenWidth,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    "Мои навыки",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 790,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Привет! Меня зовут Никита, и я — разработчик приложений и сайтов. Я владею различными инструментами и технологиями, включая Android Studio и Flutter для разработки мобильных приложений и мощных web решений, а также использую WPF на языке C# для создания десктопных приложений. Я работаю с языками программирования, такими как C#, Java и Dart. Кроме того, мною используется Figma для разработки пользовательских интерфейсов, что помогает мне создавать интуитивно понятные и привлекательные дизайны, которые улучшают пользовательский опыт. И в завершение, вёл разработку с различными базами данных: MSSQL, MySQL, PostgreSQL и Firebase.",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),

          const SizedBox(
            height: 30,
          ),

          const CardSkills(),

          const SizedBox(
            height: 30,
          ),

          const CardAllskills(),

        ],
      ),
    );
  }
}
