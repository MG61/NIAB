import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/items/projects_items.dart';
import '../../constants/items/skills_items.dart';
import '../../constants/size.dart';
import '../hoverable_card.dart';

class CardProjects extends StatelessWidget {
  const CardProjects({super.key});


  @override
  Widget build(BuildContext context) {

    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение ширины экрана
    final screenHeight = screenSize.height;


    return Center(
      child: Wrap(
        spacing: 25.0, // Промежуток между карточками
        runSpacing: 25.0, // Промежуток между строками
        children: List.generate(4, (index) {
          return Container(
            width: _getCardWidth(context), // Ширина карточки определяется в зависимости от размера экрана
            height: _getCardHeight(context),
            child: HoverableWidget(
              child: Container(
                height: 400,
                width: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 150,
                              child: Image(
                                  image: AssetImage(projectsImage[index]))
                          ),
                          const SizedBox(height: 10),
                          Text(
                            projectsTitles[index],
                            textAlign: TextAlign.left,
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            projectsInfo[index],
                            textAlign: TextAlign.left,
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                                onTap: () async {
                                  var url =
                                  projectsLink[index]; // URL для открытия
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Не удалось открыть ссылку: $url';
                                  }
                                },
                                child: const Image(
                                    image:
                                    AssetImage('assets/github.png'))),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

// Метод для определения ширины каждой карточки в зависимости от ширины экрана
  double _getCardWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width >= 1200) {
      return (width - 250) / 4; // 4 карточки в строке
    } else if (width >= 800) {
      return (width - 48) / 2; // 2 карточки в строке
    } else {
      return (width - 32) / 1; // 1 карточка в строке (ширина за вычетом отступов)
    }

  }

  // Метод для определения высоты каждой карточки в зависимости от ширины экрана
  double _getCardHeight(BuildContext context) {
    double height;
    final width = MediaQuery.of(context).size.width;

    if (width >= 1200) {
      return (height = 400.0); // 4 карточки в строке
    } else if (width >= 800) {
      return (height = 400); // 2 карточки в строке
    } else {
      return (height = 370); // 1 карточка в строке (ширина за вычетом отступов)
    }

  }

}
