import 'package:flutter/material.dart';

final lightTheme2 = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue.shade300,
    inversePrimary: Colors.blue.shade300,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Colors.blue.shade800,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.blue.shade800,
    ),
    bodySmall: TextStyle(fontSize: 20, color: Colors.blue.shade800),
  ),
  scaffoldBackgroundColor: Colors.white,
);

final darkTheme2 = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple.shade800,
    inversePrimary: Colors.purple.shade800,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodySmall: TextStyle(fontSize: 20, color: Colors.white),
  ),
  scaffoldBackgroundColor: Colors.black,
);
