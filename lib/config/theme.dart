import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Color.fromARGB(255, 158, 217, 8),
    primaryColorLight: Color.fromARGB(255, 230, 252, 176),
    primaryColorDark: Color.fromARGB(255, 130, 175, 17),
    highlightColor: Color.fromARGB(255, 230, 252, 176),
    hintColor: Color.fromARGB(255, 158, 217, 8),
    focusColor: Color.fromARGB(255, 158, 217, 8),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        decorationColor: Colors.black,
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      labelMedium: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
      headlineLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headlineSmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 8,
      ),
    ),
  );
}
