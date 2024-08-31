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
            width: 70,
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
}
