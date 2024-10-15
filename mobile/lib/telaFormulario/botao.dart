import 'package:flutter/material.dart';

class BotaoNavegacao extends StatelessWidget {
  final String texto;
  final Widget paginaDestino;

  const BotaoNavegacao({
    Key? key,
    required this.texto,
    required this.paginaDestino,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => paginaDestino),
        );
      },
      child: Text(texto),
    );
  }
}
