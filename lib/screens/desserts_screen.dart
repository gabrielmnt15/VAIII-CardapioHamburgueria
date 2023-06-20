import 'package:flutter/material.dart';
import 'package:cardapio_hamburgueria_da_terra/components/JsonReader.dart';
import 'package:cardapio_hamburgueria_da_terra/components/CustomAppBar.dart';
import 'package:cardapio_hamburgueria_da_terra/components/ScreenImage.dart';
import 'package:cardapio_hamburgueria_da_terra/components/ScreenTitle.dart';
import 'package:cardapio_hamburgueria_da_terra/components/DishModel.dart';

class DessertsScreen extends StatefulWidget {
  const DessertsScreen({Key? key}) : super(key: key);

  @override
  State<DessertsScreen> createState() => _DessertsScreenState();
}

class _DessertsScreenState extends State<DessertsScreen> {

  Future<List> initializeData() async {
    List json = await readJson('assets/data/desserts.json');
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
                    ScreenImage('assets/images/desserts/DessertsBackground.jpg'),

                    // Título da Tela
                    ScreenTitle("Sobremesas"),


                    // Itens do Cardápio
                    DishModel(snapshot.data![0]),
                    DishModel(snapshot.data![1]),
                    DishModel(snapshot.data![2]),
                    DishModel(snapshot.data![3]),
                    DishModel(snapshot.data![4]),
                    DishModel(snapshot.data![5]),
                    DishModel(snapshot.data![6])
                  ],
                );
              }
            }
        ),
      )
    );
  }
}
