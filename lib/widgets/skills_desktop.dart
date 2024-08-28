import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_niab/constants/colors.dart';
import 'package:portfolio_niab/widgets/hoverable_card.dart';

import '../constants/skills_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 60, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Мои навыки",
            style: GoogleFonts.jetBrainsMono(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 790,
            child: Text(
              "Привет! Меня зовут Никита, и я — разработчик приложений и сайтов.Я владею различными инструментами и технологиями, включая Android Studio и Flutter для разработки мобильных приложений, а также Spring Framework и WPF на C# для создания мощных веб- и десктопных решений. Мой опыт работы с языками программирования, такими как C#, Java и Dart.Кроме того, я использую Figma для разработки пользовательских интерфейсов, что помогает мне создавать интуитивно понятные и привлекательные дизайны, которые улучшают пользовательский опыт. Я также работал с различными базами данных, включая MSSQL, MySQL, PostgreSQL и Firebase.",
              softWrap: true,
              style: GoogleFonts.jetBrainsMono(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < skillsTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: HoverableWidget(
                    child: Container(
                      height: 400,
                      width: 300,
                      child: Card(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(skillsImage[i]),
                              const SizedBox(height: 30),
                              Text(
                                skillsTitles[i],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
