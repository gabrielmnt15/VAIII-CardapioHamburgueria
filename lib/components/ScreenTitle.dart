import 'package:flutter/material.dart';

// Componente que constrói o Título das telas de pratos

class ScreenTitle extends StatelessWidget {
  final String title;

  const ScreenTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 6),
          child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 23,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'DancingScript'
            ),
          )
        ),
        Divider(color: Colors.green, height: 15, thickness: 2, indent: 120, endIndent: 120)
      ],
    );
  }
}