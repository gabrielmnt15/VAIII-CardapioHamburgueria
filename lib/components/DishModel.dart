import 'package:flutter/material.dart';

/*
Principal componente da aplicação
Modelo de exibição dos pratos que recebe e exibe os dados de MAP vindo de um JSON
*/


class DishModel extends StatefulWidget {
  final Map data;

  const DishModel(this.data, {Key? key}) : super(key: key);

  @override
  State<DishModel> createState() => _DishModelState();
}

class _DishModelState extends State<DishModel> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        width: 380,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 0, top: 8, bottom: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [

              // Imagem do Prato
              Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(widget.data["image"],
                      width: 86,
                      height: 88,
                      fit: BoxFit.cover,
                    )
                ),
              ),

              // Preço e Desrcrição do Prato
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 0, top: 0, bottom: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text("${widget.data["name"]} — ${widget.data["price"]}",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Outfit'
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 230,
                        child: Text('${widget.data["description"]}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Outfit',
                            height: 1
                          ),
                        )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}