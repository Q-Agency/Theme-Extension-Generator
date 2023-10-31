import 'package:flutter/material.dart';
import 'package:theme_extender/annotations.dart';

part 'app_colors.g.dart';

@ThemeExtensionGen(forType: 'Color')
final class AppColors extends _$AppColors {
  const AppColors({
    required super.defaultColor,
    required super.secondary,
    required super.background,
    required super.highlight,
    required super.globalGray,
    required super.globalPrimary,
  });

  factory AppColors.primary() => const AppColors(
        defaultColor: Color(0xFF191919),
        secondary: Color(0xFF000000),
        background: Color(0xFFFFFFFF),
        highlight: Color(0xFFEFF7F7),
        globalGray: Color(0xFFE0E0E0),
        globalPrimary: Color(0xFF008080),
      );
}
