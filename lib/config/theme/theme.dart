import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white70),
      ),
      textTheme: Theme.of(context)
          .textTheme
          .apply(bodyColor: Colors.white70, displayColor: Colors.white70));
}
