import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();

  String nome = '';
  String email = '';
  String senha = '';

  void _mostrarDados() {
    print("Dados Cadastrados:");
    print("Nome: $nome");
    print("E-mail: $email");
    print("Senha: $senha");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Usuário")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Nome"),
                onSaved: (value) => nome = value ?? '',
                validator: (value) => value!.isEmpty ? "Digite seu nome" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: "E-mail"),
                onSaved: (value) => email = value ?? '',
                validator: (value) =>
                    value!.contains("@") ? null : "digite um email válido",
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(labelText: "Senha"),
                onSaved: (value) => senha = value ?? '',
                validator: (value) =>
                    value!.length < 6 ? "Minimo de 6 caracteres" : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _mostrarDados();
                  }
                },
                child: const Text("Cadastrar", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
