import 'package:flutter/material.dart';

class Input2 extends StatelessWidget {
  const Input2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        keyboardType: TextInputType.number, // Only allow number input
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Número', // Changed to 'Número' for consistency
        ),
      ),
    );
  }
}

class TextFieldExampleApp2 extends StatelessWidget {
  const TextFieldExampleApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Input2(),
    );
  }
}
