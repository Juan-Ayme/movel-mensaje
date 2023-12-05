import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(20, 155, 163, 14);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.pink,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
            'Los colores solo existen desde 0 ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.dark
        );
  }
}
