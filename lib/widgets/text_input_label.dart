import 'package:flutter/material.dart';

class TextInputLabel extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const TextInputLabel({
    super.key,
    required this.label,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10),
                right: Radius.circular(10),
              ),
            ),
            hintText: hintText,
          ),
        )
      ],
    );
  }
}
