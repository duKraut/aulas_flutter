import 'package:aula1/app.routes.dart';
import 'package:aula1/models/maquina.dart';
import 'package:flutter/material.dart';

class ListagemDeMaquinas extends StatelessWidget {
  ListagemDeMaquinas({super.key});

  final List<Maquina> maquinas = [
    Maquina(nome: 'Escavadeira', modelo: 'CAT', ano: 2010),
    Maquina(nome: 'Trator', modelo: 'JD', ano: 2010),
    Maquina(nome: 'Pulverizador', modelo: 'Jacto', ano: 2010),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listagem de Maquina')),
      body: ListView.builder(
        itemCount: maquinas.length,
        itemBuilder: (context, index) {
          final maquina = maquinas[index];
          return ListTile(
            title: Text(maquina.nome),
            subtitle: Text(maquina.modelo),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.detalheMaquina,
                arguments: maquina,
              );
            },
          );
        },
      ),
    );
  }
}
