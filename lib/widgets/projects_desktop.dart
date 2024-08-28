import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/items/projects_items.dart';
import '../constants/items/skills_items.dart';
import 'hoverable_card.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение ширины экрана
    final screenHeight = screenSize.height;


    return Container(
      height: screenHeight,
      width: screenWidth,
      padding: const EdgeInsets.only(left: 50, top: 50),
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
              "Привет! Меня зовут Никита, и я — разработчик приложений и сайтов. Я владею различными инструментами и технологиями, включая Android Studio и Flutter для разработки мобильных приложений и мощных web решений, а также использую WPF на языке C# для создания десктопных приложений. Я работаю с языками программирования, такими как C#, Java и Dart. Кроме того, мною используется Figma для разработки пользовательских интерфейсов, что помогает мне создавать интуитивно понятные и привлекательные дизайны, которые улучшают пользовательский опыт. И в завершение, вёл разработку с различными базами данных: MSSQL, MySQL, PostgreSQL и Firebase.",
              softWrap: true,
              style: GoogleFonts.jetBrainsMono(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
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
                              Image.network(projectsImage[i]),
                              const SizedBox(height: 30),
                              Text(
                                projectsTitles[i],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                projectsInfo[i],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
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
