import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/texts.dart';

class TypingAnimation extends StatefulWidget {
  const TypingAnimation({super.key});

  @override
  State<TypingAnimation> createState() => _TypingAnimationState();
}

class _TypingAnimationState extends State<TypingAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  int currentTextIndex = 0;
  String displayedText = "";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: textDevelopers[currentTextIndex].length.toDouble()).animate(_controller)
      ..addListener(() {
        setState(() {
          displayedText = textDevelopers[currentTextIndex].substring(0, _animation.value.toInt());
        });
      });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Timer(const Duration(seconds: 3), () {
          _controller.reverse().then((_) {
            // Переходим к следующему тексту
            currentTextIndex = (currentTextIndex + 1) % textDevelopers.length;
            // Запускаем анимацию печати для следующего текста
            _controller.forward();
          });
        });
        // После завершения печати, запускаем удаление текста

      }
    });

    // Начинаем анимацию
    _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      displayedText,
      style: GoogleFonts.jetBrainsMono(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: -3,
      ),
    );

  }
}





