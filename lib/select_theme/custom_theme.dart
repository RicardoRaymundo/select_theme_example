import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:select_theme_example/select_theme/select_theme.dart';

class CustomTheme extends StatefulWidget {
  final Widget child;
  final ThemeOptions initialTheme;

  const CustomTheme({
    Key key,
    this.initialTheme,
    @required this.child,
  }) : super(key: key);

  @override
  _CustomThemeState createState() => new _CustomThemeState();

  static ThemeData of(BuildContext context) {
    _CustomTheme inherited =
        (context.inheritFromWidgetOfExactType(_CustomTheme) as _CustomTheme);
    return inherited.data.themeData;
  }

  static _CustomThemeState instanceOf(BuildContext context) {
    _CustomTheme customTheme =
        (context.inheritFromWidgetOfExactType(_CustomTheme) as _CustomTheme);
    return customTheme.data;
  }
}

class _CustomThemeState extends State<CustomTheme> {
  ThemeData _themeData;

  ThemeData get themeData => _themeData;

  @override
  void initState() {
    _themeData = SelectTheme.data(widget.initialTheme);
    super.initState();
  }

  void changeTheme(ThemeOptions themeKey) {
    setState(() {
      _themeData = SelectTheme.data(themeKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _CustomTheme(
      data: this,
      child: widget.child,
    );
  }
}

/// Classe responsável por herdar a variável 'CustomThemeState data' para seus filhos
/// e reconstruí-los quando esta variável é modificada
class _CustomTheme extends InheritedWidget {
  final _CustomThemeState data;

  _CustomTheme({
    this.data,
    Key key,
    @required Widget child,
  }) : super(key: key, child: child);

  /// Método que determina se os dependentes devem ser atualizados quando esta classe
  /// é modificada, no caso sim.
  @override
  bool updateShouldNotify(_CustomTheme oldWidget) {
    return true;
  }
}