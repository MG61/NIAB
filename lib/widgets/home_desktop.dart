import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: new AssetImage('assets/background/background.png'), fit: BoxFit.cover),
      ),
      height: 910,
      width: double.maxFinite,
    );
  }
}
