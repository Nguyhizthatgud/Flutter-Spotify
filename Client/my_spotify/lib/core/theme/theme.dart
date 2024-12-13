import 'package:flutter/material.dart';
import 'app_pallette.dart';

class AppTheme {
  static OutlineInputBorder _enableborder(Color color) => OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(20),
      );
  static OutlineInputBorder _focusedborder(Color color) => OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(20),
      );
  static final darktheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Pallete.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: _enableborder(Pallete.borderColor),
        focusedBorder: _focusedborder(Pallete.gradient3),
      ));
  static final lighttheme = ThemeData.light().copyWith();
}
