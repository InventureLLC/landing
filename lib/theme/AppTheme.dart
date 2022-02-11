import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 48,
          fontFamily: 'Raleway'
        ),
        bodyText1: TextStyle(
          fontSize: 24,
          fontFamily: 'Lato'
        ),
        headline2: TextStyle(
          fontSize: 33,
          fontFamily: 'Raleway'
        ),
        button: TextStyle(
          fontSize: 24,
          fontFamily: 'Raleway'
        ),
        headline3: TextStyle(
          fontSize: 40,
          fontFamily: 'Raleway',
        )
      ),
      primaryColor: const Color.fromRGBO(49, 113, 104, 100),
    );
  }
}