// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_colors.dart';

// **************************************************************************
// ThemeExtensionGenerator
// **************************************************************************

class _$AppColors extends ThemeExtension<_$AppColors> {
  final Color? defaultColor;
  final Color? secondary;
  final Color? background;
  final Color? highlight;
  final Color? globalGray;
  final Color? globalPrimary;

  const _$AppColors({
    required this.defaultColor,
    required this.secondary,
    required this.background,
    required this.highlight,
    required this.globalGray,
    required this.globalPrimary,
  });

  @override
  _$AppColors copyWith({
    Color? defaultColor,
    Color? secondary,
    Color? background,
    Color? highlight,
    Color? globalGray,
    Color? globalPrimary,
  }) =>
      AppColors(
        defaultColor: defaultColor ?? this.defaultColor,
        secondary: secondary ?? this.secondary,
        background: background ?? this.background,
        highlight: highlight ?? this.highlight,
        globalGray: globalGray ?? this.globalGray,
        globalPrimary: globalPrimary ?? this.globalPrimary,
      );

  @override
  _$AppColors lerp(_$AppColors? other, double t) {
    if (other is! _$AppColors) {
      return this;
    }
    return _$AppColors(
      defaultColor: Color.lerp(defaultColor, other.defaultColor, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      background: Color.lerp(background, other.background, t),
      highlight: Color.lerp(highlight, other.highlight, t),
      globalGray: Color.lerp(globalGray, other.globalGray, t),
      globalPrimary: Color.lerp(globalPrimary, other.globalPrimary, t),
    );
  }
}

extension BuildContextExtensions on BuildContext {
  // ignore: library_private_types_in_public_api
  _$AppColors get appColors => Theme.of(this).extension<_$AppColors>()!;
}
