import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textMessageButton;
  final VoidCallback onPress;

  const CustomButton({
    super.key,
    required this.onPress,
    required this.textMessageButton,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      child: Text(textMessageButton, style: const TextStyle(fontSize: 20)),
    );
  }
}
