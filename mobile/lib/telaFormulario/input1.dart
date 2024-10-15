import 'package:flutter/material.dart';

class Input1 extends StatelessWidget {
  const Input1({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Texto',
        ),
      ),
    );
  }
}

class TextFieldExampleApp1 extends StatelessWidget {
  const TextFieldExampleApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Input1(),
    );
  }
}
