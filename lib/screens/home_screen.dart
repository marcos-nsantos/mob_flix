import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/highlight.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBFLIX'),
      ),
      body: const Column(
        children: [
          Highlight(),
        ],
      ),
    );
  }
}
