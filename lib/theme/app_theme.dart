import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Declaraciones de color
  static const mainColor = Color.fromARGB(255, 153, 210, 226);
  static const backColor =  Color.fromARGB(255, 199, 210, 214);
  static const accentColor =  Color.fromARGB(255, 142, 142, 255);
  static const iconColor =  Color.fromARGB(255, 247, 0, 0);
  static const barColor = Color.fromARGB(255, 0, 0, 0);
  static const bartextColor = Color.fromARGB(255, 255, 255, 255);

  //Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme:  AppBarTheme(
      color: mainColor,
      titleTextStyle: GoogleFonts.lato(
        color: barColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold
      ),
      ),
      iconTheme: const IconThemeData(
        color: accentColor,
        size: 35.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            accentColor),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.merienda(
              color: backColor,
              fontSize: 22
            ),
          ),
        )
      ),
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
      headlineMedium: GoogleFonts.merienda(
        color: const Color.fromARGB(255, 4, 4, 64),
        fontSize: 18,
        fontWeight: FontWeight.w500,
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 1,
      ),
    )
  );
}