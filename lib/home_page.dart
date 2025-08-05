import 'package:aula1/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bem-vindo ao Flutter')),
      body: const Center(child: WelcomeText()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Botão pressionado!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
