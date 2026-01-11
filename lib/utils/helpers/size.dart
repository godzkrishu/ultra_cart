import 'package:flutter/material.dart';
class SizeHelper {

  SizeHelper(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
  }

  double height = 0.0;
  double width = 0.0;

  double heightCustom(double percent) => height * percent / 100;

  double widthCustom(double percent) => width * percent / 100;

  static double H1 = 28;
  static double H2 = 20;
  static double H3 = 16;
  static double H4 = 14;
  static double body = 14;
  static double smallText = 12;
}