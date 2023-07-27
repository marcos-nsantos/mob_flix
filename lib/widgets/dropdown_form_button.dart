import 'package:flutter/material.dart';

List<String> categories = ['Aventura', 'Ação', 'Comédia', 'Drama', 'Terror'];

class DropdownFormButton extends StatefulWidget {
  final String label;
  const DropdownFormButton({super.key, required this.label});

  @override
  State<DropdownFormButton> createState() => _DropdownFormButtonState();
}

class _DropdownFormButtonState extends State<DropdownFormButton> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            widget.label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          height: 60.0,
          child: DropdownButtonFormField(
            isExpanded: true,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            hint: const Text('Selecione uma categoria'),
            value: (dropdownValue.isEmpty) ? null : dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: categories.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: const TextStyle(fontSize: 18.0)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
