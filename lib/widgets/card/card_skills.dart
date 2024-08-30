import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/items/skills_items.dart';
import '../../constants/size.dart';
import '../hoverable_card.dart';

class CardSkills extends StatelessWidget {
  const CardSkills({super.key});


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
                child: Card(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(skillsImage[index]
                        ,height: 50,),
                        const SizedBox(height: 30),
                        Text(
                          skillsTitles[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ]),
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
      return (width - 150) / 2; // 1 карточка в строке (ширина за вычетом отступов)
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
      return (height = 200); // 1 карточка в строке (ширина за вычетом отступов)
    }

  }

}
