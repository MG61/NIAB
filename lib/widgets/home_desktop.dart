import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение ширины экрана
    final screenHeight = screenSize.height;


    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: new AssetImage('assets/background/background.png'), fit: BoxFit.cover),
      ),
      height: screenHeight,
      width: screenWidth,
    );
  }
}
