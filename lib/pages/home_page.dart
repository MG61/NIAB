import 'package:flutter/material.dart';
import 'package:portfolio_niab/widgets/header_desktop.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Card(
        color: Colors.white,
        child: Column(
        children: [
          HeaderDesktop(),
          ListTile(
            title: Text("dedaed"),
            subtitle: Text("daddadw"),
          )
        ],
        ),
      ),
    );
  }
}
