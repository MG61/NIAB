import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';
import 'site_logo.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,

      //Свойство украшения коробки
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //Строка
        children: [
          SiteLogo(
            onTap: (){},
          ),
          const Spacer(), // Разделитель
          for (int i = 0; i < navTitles.length; i++) // Цикл из 5-ти кнопок
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
          const Spacer(), // Разделитель
          SiteLogo(
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
