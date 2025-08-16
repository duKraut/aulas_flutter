import 'package:aula1/detalhe_page.dart';
import 'package:aula1/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const home = '/';
  static const detalhes = '/detalhes';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    detalhes: (context) => DetalhePage(),
  };
}
