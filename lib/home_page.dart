import 'package:aula1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 200, // Largura desejada
            height: 60, // Altura desejada
            child: CustomButton(
              onPress: () {
                print('Pressionou o botão');
              },
              textMessageButton: 'Pressione o botão',
            ),
          ),
        ],
      ),
    );
  }
}
