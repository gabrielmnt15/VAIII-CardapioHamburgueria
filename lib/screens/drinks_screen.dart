import 'package:flutter/material.dart';
import 'package:cardapio_hamburgueria_da_terra/components/JsonReader.dart';
import 'package:cardapio_hamburgueria_da_terra/components/CustomAppBar.dart';
import 'package:cardapio_hamburgueria_da_terra/components/ScreenImage.dart';
import 'package:cardapio_hamburgueria_da_terra/components/ScreenTitle.dart';
import 'package:cardapio_hamburgueria_da_terra/components/DishModel.dart';

class DrinksScreen extends StatefulWidget {
  const DrinksScreen({Key? key}) : super(key: key);

  @override
  State<DrinksScreen> createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {

  Future<List> initializeData() async {
    List json = await readJson('assets/data/drinks.json');
    return json;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Cabeçalho da Tela
      appBar: CustomAppBar(),


      // Corpo da Tela
      body: Container(
        child: FutureBuilder<List>(
            future: initializeData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Exibir um indicador de carregamento enquanto a função assíncrona está em andamento
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                // Exibir uma mensagem de erro se ocorrer um erro na função assíncrona
                return Text('Erro ao carregar os dados');
              } else {
                // Construir o widget com base nos dados recebidos da função assíncrona
                return ListView(
                  children: [

                    // Imagem Principal da Tela
                    ScreenImage('assets/images/drinks/DrinksBackground.png'),

                    // Título da Tela
                    ScreenTitle("Bebidas"),


                    // Itens do Cardápio
                    DishModel(snapshot.data![0]),
                    DishModel(snapshot.data![1]),
                    DishModel(snapshot.data![2]),
                    DishModel(snapshot.data![3]),
                  ],
                );
              }
            }
        ),
      )
    );
  }
}
