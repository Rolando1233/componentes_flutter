import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Declaraciones de color
  static const mainColor = Color.fromARGB(255, 153, 210, 226);
  static const backColor =  Color.fromARGB(255, 199, 210, 214);
  static const accentColor =  Color.fromARGB(255, 142, 142, 255);
  static const iconColor =  Color.fromARGB(255, 247, 0, 0);

  //Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme:  TextTheme(
      headlineLarge: GoogleFonts.merienda(
        color: const Color.fromARGB(255, 4, 4, 64),
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 1.0,
        fontStyle: FontStyle.italic
      ),
        bodySmall: GoogleFonts.merienda(
        color: accentColor,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        decorationColor: Colors.black,
        decorationThickness: 1.0,
        fontStyle: FontStyle.italic
      ),
    )
  );
}