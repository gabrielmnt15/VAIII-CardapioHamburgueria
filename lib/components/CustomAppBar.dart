import 'package:flutter/material.dart';
import 'package:cardapio_hamburgueria_da_terra/screens/main_screen.dart';

// Componente referente ao cabeçalho de "Retorno" que volta pra tela principal

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(135);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      leadingWidth: 100,
      titleSpacing: -10,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/general/HeaderBackground.png'),
                fit: BoxFit.cover
            )
        ),
      ),

      // Botão do Cabeçalho
      leading: Padding(
        padding: const EdgeInsets.all(26),
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            },
            color: Colors.grey,
            icon: Icon(Icons.arrow_back_rounded, size: 24),
          ),
        ),
      ),

      // Título do Cabeçalho
      title: Text("Retornar",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 30,
          fontWeight: FontWeight.normal,
          fontFamily: 'DancingScript'
        ),
      ),
    );
  }
}
