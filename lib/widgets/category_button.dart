import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String name;
  final Color color;

  const CategoryButton({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(10.0),
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}