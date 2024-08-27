import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, required this.onTap});
  final VoidCallback? onTap; //Обьявление нажатия

  @override
  Widget build(BuildContext context) {
    return GestureDetector( //Детектор жестов
      onTap: onTap,
      //Текст;
      child: Text("Portfolio",
        style: GoogleFonts.jetBrainsMono(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
