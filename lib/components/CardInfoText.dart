import 'package:flutter/material.dart';

// Componente referente as informações mostradas no cartão da tela principal

class CardInfoText extends StatelessWidget {
  final String text;
  final IconData iconName;
  final int textColor;

  const CardInfoText(this.text , this.iconName, this.textColor,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconName,
            size: 17,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              color: Color(textColor),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Outfit'
            ),
          ),
        ],
      ),
    );
  }
}