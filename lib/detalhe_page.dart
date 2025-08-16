import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  const DetalhePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes do Produto"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://img.freepik.com/vetores-gratis/meme-quadrado-de-gato-vibrante-simples_742173-4493.jpg?semt=ais_hybrid&w=740&q=80',
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Texto de exemplo",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Voltar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
