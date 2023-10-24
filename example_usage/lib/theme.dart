import 'package:example_usage/app_colors.dart';
import 'package:example_usage/app_text_styles.dart';
import 'package:flutter/material.dart';

final primaryTheme = _getTheme(
  appColors: const AppColors(
    defaultColor: Color(0xFF191919),
    secondary: Color(0xFF000000),
    background: Color(0xFFFFFFFF),
    highlight: Color(0xFFEFF7F7),
    globalGray: Color(0xFFE0E0E0),
    globalPrimary: Color(0xFF008080),
  ),
);

ThemeData _getTheme({required AppColors appColors}) {
  return ThemeData(
    primarySwatch: Colors.cyan,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: appColors.defaultColor,
          secondary: appColors.secondary,
        ),
    scaffoldBackgroundColor: appColors.background,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: appColors.defaultColor,
      selectionColor: appColors.defaultColor?.withOpacity(0.2),
      selectionHandleColor: appColors.defaultColor,
    ),
    extensions: [
      appColors,
      AppTextStyles.primary(defaultColor: appColors.defaultColor!),
    ],
  );
}
