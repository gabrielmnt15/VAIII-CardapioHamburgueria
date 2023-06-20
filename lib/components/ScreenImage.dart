import 'package:flutter/material.dart';

// Componente que constrói a imagem principal das telas de pratos

class ScreenImage extends StatelessWidget {
  final String imagePath;

  const ScreenImage(this.imagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        width: 406,
        height: 186,
        fit: BoxFit.cover,
      ),
    );
  }
}