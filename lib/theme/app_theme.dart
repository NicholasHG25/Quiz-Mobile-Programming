import 'package:flutter/material.dart';

class AppTheme {
  static final themeA = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue[50],
    appBarTheme: AppBarTheme(color: Colors.blue),
  );

  static final themeB = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green[50],
    appBarTheme: AppBarTheme(color: Colors.green),
  );

  static final themeC = ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red[50],
    appBarTheme: AppBarTheme(color: Colors.red),
  );
}
