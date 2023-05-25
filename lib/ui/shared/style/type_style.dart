import 'package:flutter/material.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  /// Шрифт от дизайнера - тип Text.
  static const String inter = 'Inter';
  static const String ubuntu = 'Ubuntu';

  static TextStyle ubuntuB23 = const TextStyle(
    fontFamily: ubuntu,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 23,
  );

  static TextStyle interM19 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 19,
  );

  static TextStyle interM17 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 17,
  );
  static TextStyle interM16 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 16,
  );
  static TextStyle interR17 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
  );
  static TextStyle interR15 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 15,
  );

  static TextStyle interR12 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );
}
