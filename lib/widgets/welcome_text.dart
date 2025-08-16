import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Olá flutter Guairaca!',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
