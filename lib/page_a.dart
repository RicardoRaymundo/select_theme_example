
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select_theme_example/select_theme/custom_theme.dart';
import 'package:select_theme_example/select_theme/select_theme.dart';

class PageA extends StatefulWidget {
  @override
  _PageAState createState() => _PageAState();
}

class _PageAState extends State<PageA> {

  /// Método que alterna entre os temas, de acordo com o key que é passada
  void _changeTheme(BuildContext buildContext, ThemeOptions key) {
    /// Usando o método static do InheritedWidget pai para alterar o tema,
    /// atravéz da key recebida
    CustomTheme.instanceOf(buildContext).changeTheme(key);
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
                _changeTheme(context, ThemeOptions.LIGHT);
              },
              child: Text("Light!"),
            ),
            RaisedButton(
              onPressed: () {
                _changeTheme(context, ThemeOptions.DARK);
              },
              child: Text("Dark!"),
            ),
            RaisedButton(
              onPressed: () {
                _changeTheme(context, ThemeOptions.DARKER);
              },
              child: Text("Darker!"),
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
          ],
        ),
      ),
    );
  }
}
