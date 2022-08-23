import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String number;
  String letters;

  Button({required this.number, required this.letters});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 30.0,
          ),
        ),
        Text(
          letters,
          style: const TextStyle(
            fontSize: 17.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
