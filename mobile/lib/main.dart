import 'package:flutter/material.dart';
import 'package:mobile/outraPagina.dart';
import 'package:mobile/telaFormulario/botao.dart';
import 'package:mobile/telaFormulario/input1.dart';
import 'package:mobile/telaFormulario/input2.dart';
import 'package:mobile/telaListaInformacoes/lista.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(), 
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
      ),
      body: const Column(
        children: <Widget>[
          TextFieldExampleApp1(),
          TextFieldExampleApp2(),
          BotaoNavegacao(
            texto: 'Acessar Lista',
            paginaDestino: OutraPagina(), 
          ),
        ],
      ),
    );
  }
}

class TextFieldExampleApp1 extends StatelessWidget {
  const TextFieldExampleApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Usuário',
        ),
      ),
    );
  }
}

class TextFieldExampleApp2 extends StatelessWidget {
  const TextFieldExampleApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Valor',
        ),
      ),
    );
  }
}
