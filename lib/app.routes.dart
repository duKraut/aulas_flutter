import 'package:aula1/cadastro_page.dart';
import 'package:aula1/detalhe_maquina.dart';
import 'package:aula1/detalhe_page.dart';
import 'package:aula1/home_page.dart';
import 'package:aula1/listagem_de_maquinas.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const home = '/';
  static const detalhes = '/detalhes';
  static const cadastro = '/cadastro';
  static const detalheMaquina = '/detalhemaquina';
  static const listagemMaquinas = '/listagemmaquinas';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    detalhes: (context) => DetalhePage(),
    cadastro: (context) => CadastroPage(),
    detalheMaquina: (context) => DetalheMaquina(),
    listagemMaquinas: (context) => ListagemDeMaquinas(),
  };
}
