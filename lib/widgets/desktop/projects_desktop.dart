import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/items/projects_items.dart';
import '../../constants/items/skills_items.dart';
import '../card/card_projects.dart';
import '../hoverable_card.dart';

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
      width: screenWidth,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Мои проекты",
            textAlign: TextAlign.center,
            style: GoogleFonts.jetBrainsMono(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 790,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Мой путь в разработке мобильных приложений начался с Android. Я успел разработать и реализовать несколько приложений, которые предоставляют пользователям удобный интерфейс и высокую производительность. С переходом на Flutter я открыл для себя ещё больше возможностей. Flutter позволяет создавать кросс-платформенные приложения с одним кодом, что особенно эффективно в современных реалиях.",
              softWrap: true,
              textAlign: TextAlign.center,
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

          const CardProjects(),

        ],
      ),
    );
  }
}
