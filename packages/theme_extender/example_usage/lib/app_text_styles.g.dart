// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_text_styles.dart';

// **************************************************************************
// ThemeExtensionGenerator
// **************************************************************************

class _$AppTextStyles extends ThemeExtension<_$AppTextStyles> {
  final TextStyle? paragraph;
  final TextStyle? headline4;
  final TextStyle? boldLarge;
  final TextStyle? headline5;
  final TextStyle? tableTitle;
  final TextStyle? smallParagraph;

  const _$AppTextStyles({
    required this.paragraph,
    required this.headline4,
    required this.boldLarge,
    required this.headline5,
    required this.tableTitle,
    required this.smallParagraph,
  });

  @override
  _$AppTextStyles copyWith({
    TextStyle? paragraph,
    TextStyle? headline4,
    TextStyle? boldLarge,
    TextStyle? headline5,
    TextStyle? tableTitle,
    TextStyle? smallParagraph,
  }) =>
      AppTextStyles(
        paragraph: paragraph ?? this.paragraph,
        headline4: headline4 ?? this.headline4,
        boldLarge: boldLarge ?? this.boldLarge,
        headline5: headline5 ?? this.headline5,
        tableTitle: tableTitle ?? this.tableTitle,
        smallParagraph: smallParagraph ?? this.smallParagraph,
      );

  @override
  _$AppTextStyles lerp(_$AppTextStyles? other, double t) {
    if (other is! _$AppTextStyles) {
      return this;
    }
    return _$AppTextStyles(
      paragraph: TextStyle.lerp(paragraph, other.paragraph, t),
      headline4: TextStyle.lerp(headline4, other.headline4, t),
      boldLarge: TextStyle.lerp(boldLarge, other.boldLarge, t),
      headline5: TextStyle.lerp(headline5, other.headline5, t),
      tableTitle: TextStyle.lerp(tableTitle, other.tableTitle, t),
      smallParagraph: TextStyle.lerp(smallParagraph, other.smallParagraph, t),
    );
  }
}

extension BuildContextExtensions on BuildContext {
  // ignore: library_private_types_in_public_api
  _$AppTextStyles get appTextStyles =>
      Theme.of(this).extension<_$AppTextStyles>()!;
}
