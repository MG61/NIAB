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
        children: const [

          //Toolbar
          HeaderDesktop(),

          //Основной раздел
          HomeDesktop(),

          //Раздел проектов
          SizedBox(
            height: 500,
            width: double.maxFinite,
          ),

          //Раздел навыков
          SizedBox(
            height: 500,
            width: double.maxFinite,
          ),

        ],
      )
    );
  }
}
