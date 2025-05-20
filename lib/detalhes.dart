import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final email = args['email'] ?? 'Email não informado';
    final senha = args['senha'] ?? 'Senha não informada';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Cor da barra superior
        elevation: 4, // Sombra da barra
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detalhes',
          style: TextStyle(color: Colors.white),
        ), // O título fica alinhado à esquerda por padrão
      ),
      body: Center(
        child: Text(
          'Email: $email\nSenha: $senha',
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Função para navegar para a tela de detalhes e passar argumentos
void navegarParaDetalhes(BuildContext context) {
  Navigator.pushNamed(
    context,
    '/detalhes',
    arguments: {'email': 'teste@email.com', 'senha': 'minhaSenha123'},
  );
}
