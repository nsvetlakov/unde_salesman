import 'package:flutter/material.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';

/// анимированный текст
class AnimateText extends StatefulWidget {
  /// Конструктор
  const AnimateText({
    required this.text,
    required this.onPressed,
    super.key,
  });

  /// Текст
  final String text;

  ///  Колбек
  final void Function() onPressed;

  @override
  State<AnimateText> createState() => _AnimateTextState();
}

class _AnimateTextState extends State<AnimateText> {
  /// имитация долго нажатия
  bool isLongPress = false;

  void toggle() {
    /// переопределение долго нажатия
    isLongPress = !isLongPress;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        toggle();
      },
      onTapUp: (details) {
        toggle();
      },
      onTap: widget.onPressed,
      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 200),
        crossFadeState:
            isLongPress ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        firstChild: AppText(
          widget.text,
          type: AppTextType.interM12,
          decoration: TextDecoration.underline,
        ),
        secondChild: AppText(
          widget.text,
          type: AppTextType.interM12,
          color: AppColors.accent,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
