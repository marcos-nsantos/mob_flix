import 'package:flutter/material.dart';
import 'package:mob_flix/screens/home_screen.dart';
import 'package:mob_flix/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobflix',
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
