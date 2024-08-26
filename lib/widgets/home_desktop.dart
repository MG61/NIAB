import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        image: DecorationImage(
            image: new AssetImage('assets/background/background.png'),
            fit: BoxFit.cover),
      ),
      height: screenHeight,
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Моё портфолио",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Hi, I’m Nikita\n Flutter Developer",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. "
                    "\nCondimentum fermentum justo est vel imperdiet."
                    "\n Tristique in volutpat blandit quisque dolor."
                    "\n Nisi nulla platea malesuada a nulla. ",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              //LottieFiles
            ],
          )
        ],
      ),
    );
  }
}
