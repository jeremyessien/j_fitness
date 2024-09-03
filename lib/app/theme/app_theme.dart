import 'package:flutter/material.dart';

// Define your new colors
const Color kLightBlue = Color(0xFF98B9FE); // rgb(152, 185, 254)
const Color kWhite = Colors.white;

class AppTheme {
  static final ThemeData brightTheme = ThemeData(
    primaryColor: kLightBlue,
    hintColor: kLightBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: kWhite,
      foregroundColor: kLightBlue,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: kWhite,
    ),
    // textTheme: const TextTheme(
    //   bodyLarge: TextStyle(color: kWhite),
    //   bodyMedium: TextStyle(color: kWhite),
    //   displayLarge: TextStyle(color: kLightBlue, fontWeight: FontWeight.bold),
    // ),
    dialogTheme: const DialogTheme(
      backgroundColor: kWhite,
      titleTextStyle: TextStyle(color: kWhite, fontSize: 20),
      contentTextStyle: TextStyle(color: kWhite),
    ),
    // inputDecorationTheme: InputDecorationTheme(
    //   border: const OutlineInputBorder(
    //     borderSide: BorderSide(color: kLightBlue),
    //   ),
    //   focusedBorder: const OutlineInputBorder(
    //     borderSide: BorderSide(color: kLightBlue),
    //   ),
    //   labelStyle: const TextStyle(color: kLightBlue),
    //   hintStyle: TextStyle(color: kLightBlue.withOpacity(0.6)),
    // ),
    scaffoldBackgroundColor: kWhite,
    colorScheme: const ColorScheme(
      primary: kLightBlue,
      secondary: kLightBlue,
      surface: kWhite,
      background: kWhite,
      error: Colors.red,
      onPrimary: kWhite,
      onSecondary: kWhite,
      onSurface: kLightBlue,
      onBackground: kLightBlue,
      onError: kWhite,
      brightness: Brightness.light,
    ),
  );
}
