import 'package:flutter/material.dart';
import 'package:cardapio_hamburgueria_da_terra/screens/burgers_screen.dart';
import 'package:cardapio_hamburgueria_da_terra/screens/side_dishes_screen.dart';
import 'package:cardapio_hamburgueria_da_terra/screens/desserts_screen.dart';
import 'package:cardapio_hamburgueria_da_terra/screens/drinks_screen.dart';
import 'package:cardapio_hamburgueria_da_terra/components/CardInfoText.dart';
import 'package:cardapio_hamburgueria_da_terra/components/MenuButton.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        children: [

          // Seção Superior da tela
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/general/MainPageBackground.png',
                ).image,
              ),
            ),

            // Cartão de Apresentação
            child: SizedBox(
              height: 390,
              child: Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 10, left: 22, right: 22),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/general/LogoBackground.jpeg'
                          ).image,
                        )
                      ),
                    ),

                    // Informações do cartão
                    Column(
                      children: [

                        // Perfil
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 110),
                          child: Container(
                            height: 170,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            child: Image.asset(
                              'assets/images/general/Logo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        // Nome
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Da Terra\nHamburgueria Vegana",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'DancingScript'
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),

                        // CardInfo test
                        CardInfoText('Asa Norte, Superquadra Sul 316 ...', Icons.location_on, 0xFFFFFFFF),

                        // Tempo de Espera
                        CardInfoText('Tempo de espera: 20 a 30 min', Icons.access_time, 0xFFFFFFFF),

                        // Aberto Agora
                        CardInfoText('Aberto Agora', Icons.timer, 0xFF31E742)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          // Seção Inferior da tela
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 22),
            child: Text(
              'Bem-vindo à hamburgueria Da Terra! Aqui a culinária é, e sempre será artesanal e livre de exploração animal. Cuidamos de cada prato de forma única e com generosas doses de amor e atenção. Faça já o seu pedido:',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Outfit',
              ),
            ),
          ),
          
          // Menu
          Text(
            'Cardápio',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 32,
              fontWeight: FontWeight.normal,
              fontFamily: 'DancingScript'
            ),
          ),

          // Botões de Navegação
          MenuButton('Hamburgueres artesanais', BurgersScreen()),
          MenuButton('Acompanhamentos', SideDishesScreen()),
          MenuButton('Sobremesas', DessertsScreen()),
          MenuButton('Bebidas', DrinksScreen()),
        ],
      ),
    );
  }
}

