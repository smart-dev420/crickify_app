import 'package:flutter/material.dart';

class Utils {
  static TextStyle textStyle(
      {double fontSize = 25,
      String fontFamily = 'Inter',
      Color? color,
      FontWeight fontWeight = FontWeight.w700}) {
    return TextStyle(
      height: 1.2,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color ?? Colors.white,
    );
  }

  static TextStyle textBorderStyle(
      {double fontSize = 20,
      String fontFamily = 'Inter',
      double borderSize = 4.5,
      Color? border,
      Color? color,
      FontWeight? weight}) {
    return TextStyle(
      height: 1.2,
      fontSize: fontSize,
      fontWeight: weight ?? FontWeight.w700,
      fontFamily: fontFamily,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = borderSize
        ..color = border ?? Colors.black,
    );
  }
}
