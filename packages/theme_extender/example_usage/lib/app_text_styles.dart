import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_extender/annotations.dart';

part 'app_text_styles.g.dart';

@ThemeExtensionGen(forType: 'TextStyle')
class AppTextStyles extends _$AppTextStyles {
  const AppTextStyles({
    required super.paragraph,
    required super.headline4,
    required super.boldLarge,
    required super.headline5,
    required super.tableTitle,
    required super.smallParagraph,
  });

  factory AppTextStyles.primary({required Color defaultColor}) {
    final baseTextStyle = GoogleFonts.rubik().copyWith(
      color: defaultColor,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
    return AppTextStyles(
      paragraph: baseTextStyle,
      headline4: baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 24,
      ),
      headline5: baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      tableTitle: baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      smallParagraph: baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: const Color(0xFF858585),
      ),
      boldLarge:
          baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 24),
    );
  }
}
