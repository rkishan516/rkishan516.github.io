import 'package:flutter/material.dart';
import 'package:portfolio/Pages/ContactScreen.dart';
import 'package:portfolio/Pages/HomeScreen.dart';
import 'package:portfolio/Pages/SkillsScreen.dart';

class Body extends StatelessWidget {
  final int pageIndex;

  const Body({Key key, this.pageIndex = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (pageIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return SkillsScreen();
      default:
        return ContactScreen();
    }
  }
}
