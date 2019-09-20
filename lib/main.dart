
import 'package:flutter/material.dart';
import 'package:select_theme_example/page_a.dart';
import 'package:select_theme_example/select_theme/select_theme.dart';

import 'select_theme/custom_theme.dart';

void main() {
  runApp(
    /// Envolvendo o Main em um StatefulWidget, que é filho de um InheritedWidget
    CustomTheme(
      /// Tema inicial
      initialTheme: ThemeOptions.LIGHT,
      child: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme selector example',
      theme: CustomTheme.of(context),
      home: _MainPage(title: 'Main page',),
    );
  }
}

class _MainPage extends StatefulWidget {
  _MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<_MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
      ),
      body: PageA(),
    );
  }
}
