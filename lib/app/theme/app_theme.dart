import 'package:flutter/material.dart';

const Color kBlack = Color(0xFF000000);
const Color kFuchsiaPink = Color(0xFFFF00FF);
const Color kBurntOrange = Color(0xFFFF6F00);

class AppTheme {
  // Light theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: kBlack,
    hintColor: kFuchsiaPink,
    appBarTheme: const AppBarTheme(
      backgroundColor: kBlack,
      foregroundColor: Colors.white,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: kFuchsiaPink,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: kBlack),
      bodyMedium: TextStyle(color: kBlack),
      displayLarge: TextStyle(color: kFuchsiaPink, fontWeight: FontWeight.bold),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: kBlack,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: kBlack),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: kFuchsiaPink),
      ),
      labelStyle: const TextStyle(color: kBlack),
      hintStyle: TextStyle(color: kBlack.withOpacity(0.6)),
    ),
    scaffoldBackgroundColor: kBurntOrange,
    colorScheme: const ColorScheme(
      primary: kBlack,
      secondary: kFuchsiaPink,
      surface: kBurntOrange,
      background: kBlack,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
  );
}
