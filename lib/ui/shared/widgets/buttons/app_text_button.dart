import 'package:flutter/material.dart';
import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';

/// текст кнопка
class AppTextButton extends StatelessWidget {
  /// Конструктор
  const AppTextButton({
    required this.title,
    super.key,
    this.onPressed,
    this.pathIcon,
    this.height,
    this.width,
    this.type,
  });

  /// Колбек нажатия
  final void Function()? onPressed;

  /// Текст кнопки
  final String title;

  /// Путь к иконке
  final String? pathIcon;

  /// Высота иконки
  final double? height;

  /// Ширина иконки
  final double? width;

  /// Тип текста
  final AppTextType? type;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            title,
            type: type ?? AppTextType.interR20,
          ),
          if (pathIcon != null) ...[
            5.w,
            AppIcons.img(pathIcon!, width: width, height: height),
          ]
        ],
      ),
    );
  }
}
