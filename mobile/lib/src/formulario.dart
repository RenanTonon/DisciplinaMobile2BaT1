import 'package:http/http.dart' as http;
import 'dart:convert';

class ManualFuture {
  Future<List<Conta>> getUsuarios() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:3000/pessoa"));

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        return jsonResponse.map((item) => Conta.fromJson(item)).toList();
      } else {
        throw Exception('Falha ao carregar usuários');
      }
    } catch (e) {
      throw Exception('Erro: $e');
    }
  }
}

class Conta {
  final String nome; 

  Conta({required this.nome});

  factory Conta.fromJson(Map<String, dynamic> json) {
    return Conta(
      nome: json['nome'], 
    );
  }
}
