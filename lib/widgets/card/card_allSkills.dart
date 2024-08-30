import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/items/bottomSkills_items.dart';
import '../../constants/items/skills_items.dart';
import '../../constants/size.dart';
import '../hoverable_card.dart';

class CardAllskills extends StatelessWidget {
  const CardAllskills({super.key});


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
        children: List.generate(14, (index) {
          return Container(
            width: 70, // Ширина карточки определяется в зависимости от размера экрана
            // height: _getCardHeight(context),
            child: HoverableWidget(
              child: Container(
                child: Card(
                  child: Card(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(bottomSkillsImage[index]),
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

// // Метод для определения ширины каждой карточки в зависимости от ширины экрана
//   double _getCardWidth(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final widthSize;
//
//     if (width >= 1200) {
//       return (widthSize = 70) / 1; // 4 карточки в строке
//     } else if (width >= 800) {
//       return (widthSize = 70) ; // 2 карточки в строке
//     } else {
//       return (widthSize = 50) / 4; // 1 карточка в строке (ширина за вычетом отступов)
//     }
//
//   }

  // // Метод для определения высоты каждой карточки в зависимости от ширины экрана
  // double _getCardHeight(BuildContext context) {
  //   double height;
  //   final width = MediaQuery.of(context).size.width;
  //
  //   if (width >= 1200) {
  //     return (height = 400.0); // 4 карточки в строке
  //   } else if (width >= 800) {
  //     return (height = 400); // 2 карточки в строке
  //   } else {
  //     return (height = 200); // 1 карточка в строке (ширина за вычетом отступов)
  //   }
  //
  // }

}
