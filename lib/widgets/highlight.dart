import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/highlight_button.dart';

class Highlight extends StatelessWidget {
  const Highlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          color: Colors.cyan,
          child: Image.asset(
            'assets/images/invincible.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // button on bottom center
        const Positioned(
          bottom: 20.0,
          left: 0,
          right: 0,
          child: Center(
            child: HighlightButton(),
          ),
        ),
      ],
    );
  }
}
