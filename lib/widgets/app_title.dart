import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String message;
  const AppTitle({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }
}
