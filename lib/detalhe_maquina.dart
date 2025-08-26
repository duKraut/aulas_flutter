import 'package:aula1/models/maquina.dart';
import 'package:flutter/material.dart';

class DetalheMaquina extends StatelessWidget {
  const DetalheMaquina({super.key});

  @override
  Widget build(BuildContext context) {
    final Maquina maquina =
        ModalRoute.of(context)!.settings.arguments as Maquina;

    return Scaffold(
      appBar: AppBar(title: Text('Detalhe - ${maquina.nome}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nome: ${maquina.nome}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "modelo: ${maquina.modelo}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Ano: ${maquina.ano}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
