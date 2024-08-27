import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.zero,bottom: Radius.circular(45)),
        image: DecorationImage(
            image: AssetImage('assets/background/background.png'),
            fit: BoxFit.cover),
      ),
      height: screenHeight,
      width: screenWidth,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Моё портфолио",
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Hi, I’m Nikita\nFlutter Developer",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Lorem ipsum dolor sit amet consectetur.",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
           Column(
            children: [
              Container(
                height: 800,
                width: 800,
                  child: Lottie.asset("assets/lottie/computer.json"),
              )
              //LottieFiles
            ],
          )
        ],
      ),
    );
  }
}
