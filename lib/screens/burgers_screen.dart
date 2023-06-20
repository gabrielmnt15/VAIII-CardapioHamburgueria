import 'package:flutter/material.dart';
import 'package:cardapio_hamburgueria_da_terra/components/JsonReader.dart';
import 'package:cardapio_hamburgueria_da_terra/components/CustomAppBar.dart';
import 'package:cardapio_hamburgueria_da_terra/components/ScreenImage.dart';
import 'package:cardapio_hamburgueria_da_terra/components/ScreenTitle.dart';
import 'package:cardapio_hamburgueria_da_terra/components/DishModel.dart';

class BurgersScreen extends StatefulWidget {
  const BurgersScreen({Key? key}) : super(key: key);

  @override
  State<BurgersScreen> createState() => _BurgersScreenState();
}

class _BurgersScreenState extends State<BurgersScreen> {

  Future<List> initializeData() async {
    List json = await readJson('assets/data/burgers.json');
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

                  //Imagem Principal da Tela
                  ScreenImage('assets/images/burgers/BurgerBackground.jpg'),

                  // Título da Tela
                  ScreenTitle("Hamburgueres"),

                  // Texto sobre o pão
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    child: Text("Todos os pães podem ser substituídos pelo pão sem glúten da casa (preparado com farinha de amêndoas) por um adicional de 6\$.", textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Outfit'
                      ),
                    ),
                  ),


                  // Itens do Cardápio
                  DishModel(snapshot.data![0]),
                  DishModel(snapshot.data![1]),
                  DishModel(snapshot.data![2]),
                  DishModel(snapshot.data![3]),
                  DishModel(snapshot.data![4]),
                  DishModel(snapshot.data![5]),
                  DishModel(snapshot.data![6]),
                  DishModel(snapshot.data![7])
                ],
              );
            }
          }
        ),
      )
    );
  }
}








