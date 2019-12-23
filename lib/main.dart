import 'package:flutter/material.dart';
import './constants.dart';
import './splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: COLOR_PRIMARY,
        textTheme: TextTheme(body1: TEXT_BLACK, button: TEXT_WHITE,),
        iconTheme: IconThemeData(color: Colors.black)
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}