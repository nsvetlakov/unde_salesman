import 'package:flutter/material.dart';

/// Text styles
abstract class AppTextStyles {
  const AppTextStyles._();

  /// Шрифт от дизайнера - тип Text.
  static const String inter = 'Inter';

  /// Шрифт от дизайнера - тип Text.
  static const String ubuntu = 'Ubuntu';

  /// Ubuntu 23
  static TextStyle ubuntuB23 = const TextStyle(
    fontFamily: ubuntu,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 23,
  );

  /// Inter 24
  static TextStyle interM24 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 24,
  );

  /// Inter 19
  static TextStyle interM19 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 19,
  );

  /// Inter 17
  static TextStyle interM17 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 17,
  );

  /// Inter 12
  static TextStyle interM12 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );

  /// Inter 16
  static TextStyle interM16 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 16,
  );

  /// Inter 20
  static TextStyle interR20 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 20,
  );

  /// Inter 17
  static TextStyle interR17 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
  );

  /// Inter 15
  static TextStyle interR15 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 15,
  );

  /// Inter 12
  static TextStyle interR12 = const TextStyle(
    fontFamily: inter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );
}
