// hoverable_widget.dart

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HoverableWidget extends StatefulWidget {
  final Widget child; // Дочерний виджет
  final Color hoverColor; // Цвет при наведении
  final Color defaultColor; // Начальный цвет

  const HoverableWidget({
    required this.child,
    this.hoverColor = CustomColor.backgroundCardDark, // Цвет по умолчанию при наведении
    this.defaultColor = CustomColor.backgroundCardBlue, // Начальный цвет по умолчанию
    Key? key,
  }) : super(key: key);

  @override
  _HoverableWidgetState createState() => _HoverableWidgetState();
}

class _HoverableWidgetState extends State<HoverableWidget> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.defaultColor; // Установите начальный цвет
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          currentColor = widget.hoverColor; // Цвет при наведении
        });
      },
      onExit: (_) {
        setState(() {
          currentColor = widget.defaultColor; // Возвращение к начальному цвету
        });
      },
      child: Container(
        color: currentColor, // Установка цвета контейнера
        child: widget.child, // Отображение дочернего виджета
      ),
    );
  }
}