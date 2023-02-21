import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:demo/utils/colors.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: "Poppins",
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: colorPrimary,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: TextStyle(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: colorSecondaryDark),
        displayMedium: TextStyle(color: colorSecondaryDark),
        displaySmall: TextStyle(color: colorSecondaryDark),
        labelLarge: TextStyle(color: Vx.gray400),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: colorSecondaryDark,
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colorSecondaryDark),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: colorPrimaryDark, foregroundColor: Colors.white));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: "Poppins",
      cardColor: Colors.black,
      canvasColor: colorPrimaryDark,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: TextStyle(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Colors.white),
        displayMedium: TextStyle(color: Colors.white),
        displaySmall: TextStyle(color: Colors.white),
        labelLarge: TextStyle(color: Vx.gray400),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: colorSecondary,
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colorSecondary),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: colorSecondary, foregroundColor: Colors.white));
}
