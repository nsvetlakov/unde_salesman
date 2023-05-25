import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unde_salesman/shared/colors.dart';

import 'dart:ui' as ui show TextHeightBehavior;

import 'package:unde_salesman/shared/style/type_style.dart';

enum AppTextType {
  ubuntuB23,
  interM19,
  interM17,
  interM16,
  interR17,
  interR15,
  interR12,
}

TextStyle textStyle(AppTextType type, Color? color) {
  switch (type) {
    case AppTextType.ubuntuB23:
      return AppTextStyles.ubuntuB23.copyWith(color: color);
    case AppTextType.interM19:
      return AppTextStyles.interM19.copyWith(color: color);
    case AppTextType.interM17:
      return AppTextStyles.interM17.copyWith(color: color);
    case AppTextType.interM16:
      return AppTextStyles.interM16.copyWith(color: color);
    case AppTextType.interR17:
      return AppTextStyles.interR17.copyWith(color: color);
    case AppTextType.interR15:
      return AppTextStyles.interR15.copyWith(color: color);
    case AppTextType.interR12:
      return AppTextStyles.interR12.copyWith(color: color);
    default:
      return AppTextStyles.interR15.copyWith(color: color);
  }
}

class AppText extends StatelessWidget {
  final String text;
  final AppTextType type;
  final Color? color;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final ui.TextHeightBehavior? textHeightBehavior;

  const AppText(
    this.text, {
    required this.type,
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle(type, color ?? AppColors.textColor),
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
