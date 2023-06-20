import 'package:flutter/material.dart';

// Botão da tela principal que faz o roteamento entre telas

class MenuButton extends StatelessWidget {
  final String text;
  final Widget destinationScreen;

  const MenuButton(this.text, this.destinationScreen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
      child: SizedBox(
        width: 322,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => destinationScreen)
            );
          },
          child: Text(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF7EA069),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            side: BorderSide(
              color: Colors.transparent,
              width: 1
            ),
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Outfit'
            )
          ),
        ),
      ),
    );
  }
}
