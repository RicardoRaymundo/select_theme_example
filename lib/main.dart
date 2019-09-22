import 'package:flutter/material.dart';
import 'package:select_theme_example/page/page_home.dart';
import 'package:select_theme_example/theme/theme_config.dart';
import 'package:select_theme_example/theme/theme_select.dart';

void main() {
  runApp(
    /// Envolvendo o Main em um StatefulWidget, que é filho de um InheritedWidget
    ThemeConfig(
      /// Tema inicial
      initialTheme: ThemeAspect.LIGHT,
      child: Main(),
    ),
  );
}

///
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

///
class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme selector example',
      theme: ThemeConfig.of(context), /// Recupera o tema default e configura o tema da aplicação
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor, /// Recupera uma cor do tema da aplicação
          title: Text('Main Page'),
        ),
        body: PageHome(),
      ),
    );
  }
}
