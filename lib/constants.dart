import 'package:flutter/material.dart';

const Color COLOR_WHITE = Colors.white;
const Color COLOR_PRIMARY = Color(0xFF1DBC60);
const Color COLOR_BLACK = Colors.black;
const IconThemeData ICON_BLACK = IconThemeData(color: Colors.black);
const TEXT_PRIMARY = TextStyle(color: Color(0xFF1DBC60));
const TEXT_BLACK = TextStyle(color: Colors.black);
const TEXT_WHITE = TextStyle(color: Colors.white);

Text text(String text, {Color color, double fontSize, FontWeight fontWeight}) {
  return Text(text, style: TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),);
}