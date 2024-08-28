import 'package:flutter/material.dart';
import 'package:portfolio_niab/widgets/header_desktop.dart';
import 'package:portfolio_niab/widgets/home_desktop.dart';
import 'package:portfolio_niab/widgets/projects_desktop.dart';
import 'package:portfolio_niab/widgets/skills_desktop.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          ListView(
            scrollDirection: Axis.vertical,
            children: const [

              //Основной раздел
              HomeDesktop(),

              //Раздел навыков
              SkillsDesktop(),

              //Раздел проектов
              ProjectsDesktop(),

            ],
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeaderDesktop(),
          ),
        ]
      )
    );
  }
}
