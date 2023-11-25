import 'package:Coffee_Shop/page/navigator.dart';
import 'package:flutter/material.dart';
import 'page/Splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: ButtonNavi(),
            );
          }
        }));
  }
}
