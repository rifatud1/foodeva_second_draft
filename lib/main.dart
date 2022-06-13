import 'package:flutter/material.dart';
import 'pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food City",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 0,
            foregroundColor: Colors.white,
          ),
          accentColor: Colors.redAccent,
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
              headline2: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.redAccent,
              ),
              bodyText1: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent,
              ))),
      home: SignupPage(),
    );
  }
}
