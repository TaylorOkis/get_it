import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/textfield_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_theme.dart';

class GetItAppTheme {
  GetItAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    textTheme: GetItTextTheme.lightTextTheme,
    chipTheme: GetItChipTheme.lightChipTheme,
    appBarTheme: GetItAppBarTheme.lightAppBarTheme,
    checkboxTheme: GetItCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: GetItBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: GetItElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: GetItOutlinedButtonTheme.lightOUtlinedButtonTheme,
    inputDecorationTheme: GetItTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    textTheme: GetItTextTheme.darkTextTheme,
    chipTheme: GetItChipTheme.darkChipTheme,
    appBarTheme: GetItAppBarTheme.darkAppBarTheme,
    checkboxTheme: GetItCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: GetItBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: GetItElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: GetItOutlinedButtonTheme.darkOUtlinedButtonTheme,
    inputDecorationTheme: GetItTextFormFieldTheme.darkInputDecorationTheme,
  );
}
