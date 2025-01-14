import 'package:flutter/material.dart';

Color primary = Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = Color.fromARGB(15, 82, 80, 80);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle1 =
      TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headlinestyle2 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headlinestyle3 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
}
