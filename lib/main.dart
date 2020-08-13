import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:uiux2/thr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Function duringSplash = () {
      print('Something background process');
      int a = 123 + 23;
      print(a);

      if (a > 100)
        return 1;
      else
        return 2;
    };
    Map<int, Widget> op = {1: thr()};
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplash(
        imagePath: 'images/3.jpg',
        home: thr(),
        customFunction: duringSplash,
        duration: 2500,
        type: AnimatedSplashType.BackgroundProcess,
        outputAndHome: op,
      ),
    );
  }
}
