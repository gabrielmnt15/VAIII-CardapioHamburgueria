import 'package:flutter/services.dart';
import 'dart:convert';
/*
Função que lê um JSON referênciado por um caminho em "path".
Retorna uma lista de MAPs com cada MAP correspondendo a um prato.
 */

Future<List> readJson(String path) async {
  final String response = await rootBundle.loadString(path);
  final data = await json.decode(response);
  return data;
}
