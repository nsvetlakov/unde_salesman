import 'dart:ui' as ui show TextHeightBehavior;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/style/type_style.dart';

/// Text styles
enum AppTextType {
  ///
  ubuntuB23,

  ///
  interM24,

  ///
  interM19,

  ///
  interM17,

  ///
  interM12,

  ///
  interM16,

  ///
  interR20,

  ///
  interR17,

  ///
  interR15,

  ///
  interR12,
}

/// Text styles
TextStyle textStyle({
  required AppTextType type,
  Color? color,
  double? height,
  TextDecoration? decoration,
}) {
  switch (type) {
    case AppTextType.ubuntuB23:
      return AppTextStyles.ubuntuB23.copyWith(
        color: color,
        height: height != null ? height / 23 : null,
        decoration: decoration,
      );
    case AppTextType.interM24:
      return AppTextStyles.interM24.copyWith(
        color: color,
        height: height != null ? height / 24 : null,
        decoration: decoration,
      );
    case AppTextType.interM19:
      return AppTextStyles.interM19.copyWith(
        color: color,
        height: height != null ? height / 19 : null,
        decoration: decoration,
      );
    case AppTextType.interM17:
      return AppTextStyles.interM17.copyWith(
        color: color,
        height: height != null ? height / 17 : null,
        decoration: decoration,
      );
    case AppTextType.interM12:
      return AppTextStyles.interM12.copyWith(
        color: color,
        height: height != null ? height / 12 : null,
        decoration: decoration,
      );
    case AppTextType.interM16:
      return AppTextStyles.interM16.copyWith(
        color: color,
        height: height != null ? height / 16 : null,
        decoration: decoration,
      );
    case AppTextType.interR20:
      return AppTextStyles.interR20.copyWith(
        color: color,
        height: height != null ? height / 20 : null,
        decoration: decoration,
      );
    case AppTextType.interR17:
      return AppTextStyles.interR17.copyWith(
        color: color,
        height: height != null ? height / 17 : null,
        decoration: decoration,
      );
    case AppTextType.interR15:
      return AppTextStyles.interR15.copyWith(
        color: color,
        height: height != null ? height / 15 : null,
        decoration: decoration,
      );
    case AppTextType.interR12:
      return AppTextStyles.interR12.copyWith(
        color: color,
        height: height != null ? height / 12 : null,
        decoration: decoration,
      );
  }
}

/// App Text
class AppText extends StatelessWidget {
  /// contructor
  const AppText(
    this.text, {
    required this.type,
    super.key,
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.height,
    this.decoration,
  });

  ///
  final String text;

  ///
  final AppTextType type;

  ///
  final Color? color;

  ///
  final TextAlign? textAlign;

  ///
  final TextDirection? textDirection;

  ///
  final Locale? locale;

  ///
  final bool? softWrap;

  ///
  final TextOverflow? overflow;

  ///
  final double? textScaleFactor;

  ///
  final int? maxLines;

  ///
  final String? semanticsLabel;

  ///
  final TextWidthBasis? textWidthBasis;

  ///
  final ui.TextHeightBehavior? textHeightBehavior;

  ///
  final double? height;

  /// decoration
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle(
        type: type,
        color: color ?? AppColors.textColor,
        height: height,
        decoration: decoration,
      ),
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
