import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 48,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            bodyText1: TextStyle(
              fontSize: 24,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline2: TextStyle(
              fontSize: 33,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            button: TextStyle(
              fontSize: 24,
              fontFamily: 'Raleway',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            headline3: TextStyle(
              fontSize: 40,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            )),
        primaryColor: const Color.fromRGBO(49, 113, 104, 1.0),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        )));
  }
}
