import 'package:flutter/material.dart';

/// Opções de temas do app
enum ThemeOptions { LIGHT, DARK, DARKER }

/// Classe que define os diferentes temas e os atribui às KEYS acima
class SelectTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,
  );

  static final ThemeData darkerTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  );

  /// Método que retorna o tema corresponde à opção recebida
  static ThemeData data(ThemeOptions themeKey) {
    switch (themeKey) {
      case ThemeOptions.LIGHT:
        return lightTheme;
      case ThemeOptions.DARK:
        return darkTheme;
      case ThemeOptions.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }
}
