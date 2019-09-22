
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select_theme_example/theme/theme_config.dart';
import 'package:select_theme_example/theme/theme_select.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  /// Método que alterna entre os temas, de acordo com o key que é passada
  void _changeTheme(BuildContext context, ThemeAspect aspect) {
    /// Usando o método static do InheritedWidget pai para alterar o tema,
    /// atravéz da key recebida
    ThemeConfig.instanceOf(context).changeTheme(aspect);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            /// Coluna de botões que quando pressionados, alteram o theme do App
            /// atravéz do método _changeTheme desta classe
            RaisedButton(
              onPressed: () {
                _changeTheme(context, ThemeAspect.LIGHT);
              },
              child: Text("Light!"),
            ),
            RaisedButton(
              onPressed: () {
                _changeTheme(context, ThemeAspect.DARK);
              },
              child: Text("Dark!"),
            ),
            RaisedButton(
              onPressed: () {
                _changeTheme(context, ThemeAspect.DARKER);
              },
              child: Text("Darker!"),
            ),
            RaisedButton(
              onPressed: () {
                _changeTheme(context, ThemeAspect.COLORS);
              },
              child: Text("Colors!"),
            ),
            Divider(
              height: 100,
            ),
            AnimatedContainer(
              /// Container que é animado conforme é alterado seu estado,
              /// que no caso deste exemplo, é somente alterada cor.
              duration: Duration(milliseconds: 500),
              color: Theme.of(context).primaryColor,
              width: 100,
              height: 100,
            ),
            Divider(
              height: 60,
            ),
            Card(
              child: Text('CARD'),
            )
          ],
        ),
      ),
    );
  }
}
