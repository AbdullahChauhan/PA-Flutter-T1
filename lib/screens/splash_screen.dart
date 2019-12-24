import 'package:flutter/material.dart';
import 'dart:async';
import './login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 5000),
        () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Login();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Center(
            child: CircleAvatar(
              child: Image.asset('assets/images/logo.png'),
              backgroundColor: Colors.white,
              maxRadius: 100.0,
            ),
          ),
        ),
        Expanded(flex: 1, child: Center(child: CircularProgressIndicator()))
      ],
    ));
  }
}
