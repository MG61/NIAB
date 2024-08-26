import 'package:flutter/material.dart';
import 'package:portfolio_niab/widgets/header_desktop.dart';

import '../constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          //Toolbar
          HeaderDesktop(),

          //Раздел навыков
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.white,
          ),

          //Раздел проектов
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //Раздел навыков
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

        ],
      )
    );
  }
}
