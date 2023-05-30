import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// App icons
class AppIcons {
  /// нет иконки
  static const noIcon = 'assets/images/no-icon.svg';

  /// нет картинки
  static const noImage = 'assets/images/no-image.svg';

  /// логотип
  static const logo = 'assets/images/logo.svg';

  /// логотип
  static const logoGreen = 'assets/images/logo-green.svg';

  /// глаз закрыт
  static const eyeStates = 'assets/images/eye-states.svg';

  /// стрелка вниз для выбора языков
  static const langArrow = 'assets/images/lang-arrow.svg';

  /// стрелка права слкдующий шаг
  static const nextArrow = 'assets/images/next-arrow.svg';

  /// иконка авторизации через google
  static const authGoogle = 'assets/images/auth-google.svg';

  /// иконка авторизации через facebook
  static const authFacebook = 'assets/images/auth-facebook.svg';

  /// иконка авторизации через apple
  static const authApple = 'assets/images/auth-apple.svg';

  /// Возвращает виджет иконки
  static Widget img(
    String path, {
    double? width,
    double? height,
    Color? color,
    BoxFit? fit,
  }) {
    return SvgPicture.asset(
      path,
      width: width ?? 24,
      height: height ?? 24,
      fit: fit ?? BoxFit.contain,
    );
  }
}
