import 'package:flutter/material.dart';

class TextInputLabel extends StatelessWidget {
  const TextInputLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'URL',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.url,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10),
                right: Radius.circular(10),
              ),
            ),
            hintText: 'https://www.youtube.com/watch?v=...',
          ),
        )
      ],
    );
  }
}
