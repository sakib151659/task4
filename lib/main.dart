import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'introduction/introductionScreen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Test",
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/appLogo.png'),
        nextScreen: introScreen(),
        backgroundColor: HexColor("#0C9AD6"),
        duration: 10,
        splashIconSize: 120,

      ),

    );



  }
}