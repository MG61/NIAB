import 'package:flutter/material.dart';
import 'package:portfolio_niab/widgets/header_desktop.dart';
import 'package:portfolio_niab/widgets/home_desktop.dart';
import 'package:portfolio_niab/widgets/projects_desktop.dart';
import 'package:portfolio_niab/widgets/skills_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final List<GlobalKey> navBarKeys = List.generate(3, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              key: navBarKeys.first,
            ),
            //Основной раздел
            HomeDesktop(),

            //Раздел навыков
            SkillsDesktop(
              key: navBarKeys[1],
            ),

            //Раздел проектов
            ProjectsDesktop(
              key: navBarKeys[2],
            ),
          ],
        ),
      ),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: HeaderDesktop(
          onNavMenuTap: (int navIndex) {
            //Вызов функции для прыжка
            scrollToSection(navIndex);
          },
        ),
      ),
    ]));
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 3) {
      return;
    }

    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut);
  }
}
