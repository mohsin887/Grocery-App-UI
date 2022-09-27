import 'package:flutter/material.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Theme.of(context).primaryColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Theme.of(context).primaryColor,
      elevation: 0,
    ),
    fontFamily: 'Metropolis',
    textTheme: const TextTheme(
      // headline3:
      //     const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: TextStyle(
        fontSize: 18,
        color: Color(0xff9B9B9B),
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    buttonTheme: ButtonThemeData(
      minWidth: double.maxFinite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    primaryColor: const Color(0xFF33907C),
    colorScheme: Theme.of(context)
        .colorScheme
        .copyWith(
          primary: const Color(0xFF33907C),
        )
        .copyWith(
          secondary: const Color(0xFF2AA952),
        ),
  );
}