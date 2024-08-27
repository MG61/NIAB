import 'package:flutter/material.dart';
import 'package:portfolio_niab/widgets/header_desktop.dart';
import 'package:portfolio_niab/widgets/home_desktop.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          //Toolbar
          const HeaderDesktop(),

          //Основной раздел
          const HomeDesktop(),

          //Раздел проектов
          Container(
            height: 500,
            width: double.maxFinite,
          ),

          //Раздел навыков
          Container(
            height: 500,
            width: double.maxFinite,
          ),

        ],
      )
    );
  }
}
