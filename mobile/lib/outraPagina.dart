import 'package:flutter/material.dart';
import 'package:mobile/telaListaInformacoes/lista.dart';

class OutraPagina extends StatelessWidget {
  const OutraPagina({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(), 
    );
  }
}

