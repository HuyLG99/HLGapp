import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  //In Flutter, TAppTheme._() is a private constructor of the TAppTheme class,
  // denoted by the underscore _ prefix. It can only be accessed within the same
  // Dart file and cannot be accessed from outside the file.

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()));
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
  );
}
