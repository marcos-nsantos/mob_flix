import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title;

  const CardTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200.0,
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            title,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
