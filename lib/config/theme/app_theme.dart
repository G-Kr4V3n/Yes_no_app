import 'package:flutter/material.dart';


List<Color> _colorThemes = [
  const Color(0xFF289696),
  const Color(0xFF2AB468),
  const Color(0xFF9647AA),
  const Color(0xFF97D632),
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
    : assert(selectColor >= 0 && selectColor <= _colorThemes.length-1);

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectColor]);
  }
}
