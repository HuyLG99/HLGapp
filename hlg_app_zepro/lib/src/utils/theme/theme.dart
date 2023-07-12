import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:hlg_app_zepro/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:hlg_app_zepro/src/utils/theme/widget_themes/text_form_field_theme.dart';
import 'package:hlg_app_zepro/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  //In Flutter, TAppTheme._() is a private constructor of the TAppTheme class,
  // denoted by the underscore _ prefix. It can only be accessed within the same
  // Dart file and cannot be accessed from outside the file.

  //LighTheme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOulinedButtonTheme.lightOulinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );

  //DarkTheme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOulinedButtonTheme.darkOulinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme

  );
}
