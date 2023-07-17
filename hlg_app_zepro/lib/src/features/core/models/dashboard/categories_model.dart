import 'package:flutter/material.dart';

class DashBoardCategories{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPressed;

DashBoardCategories(this.title, this.heading, this.subHeading, this.onPressed);

static List<DashBoardCategories> list = [
  DashBoardCategories('JS', 'Java Script', '10 Lessons', () { }),
  DashBoardCategories('F', 'Flutter', '11 Lessons', () { }),
  DashBoardCategories('H', 'HTML', '8 Lessons', () { }),
  DashBoardCategories('K', 'Kotlin', '20 Lessons', () { }),
  DashBoardCategories('P', 'Python', '100 Lessons', () { }),

];
}