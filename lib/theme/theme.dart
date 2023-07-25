import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  colorScheme: const ColorScheme.dark(
    background: Color(0xFF1A1A1A),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF222222),
    elevation: 1,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Color(0xFF0077FF),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
);
