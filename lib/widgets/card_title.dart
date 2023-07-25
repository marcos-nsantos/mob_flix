import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/category_button.dart';

class CardTitle extends StatelessWidget {
  final String title;

  const CardTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Align(
            alignment: AlignmentDirectional.topStart,
            child: CategoryButton(name: 'Aventura', color: Colors.blue),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 200.0,
            width: double.infinity,
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
        ],
      ),
    );
  }
}
