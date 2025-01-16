import 'package:flutter/material.dart';

class Utils {
  static TextStyle textStyle({
    double fontSize = 25,
    String fontFamily = 'Inter',
    Color? color,
    FontWeight fontWeight = FontWeight.w700
  }) {
    return TextStyle(
      height: 1.2,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color ?? Colors.white,
    );
  }
}
