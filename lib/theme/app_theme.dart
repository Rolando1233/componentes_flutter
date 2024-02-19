import 'package:flutter/material.dart';

class AppTheme{
  //Declaraciones de color
  static const mainColor = Color.fromARGB(255, 153, 210, 226);
  static const backColor = Color.fromARGB(255, 199, 210, 214);

  //Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color.fromARGB(255, 4, 4, 64),
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-serif'
      )
    )
  );
}