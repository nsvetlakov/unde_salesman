import 'package:flutter/material.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';

/// тип кнопки начальная отрисовка
enum TypeButton {
  /// зеленая
  green,

  /// белая
  white,
}

/// Конпка
class AppButton extends StatefulWidget {
  /// Конструктор
  const AppButton({
    required this.title,
    super.key,
    this.onPressed,
    this.isDisabled = false,
    this.typeButton = TypeButton.green,
  });

  /// Текст
  final String title;

  ///  Колбек
  final void Function()? onPressed;

  /// неактивная кнопка
  final bool isDisabled;

  /// тип кнопки стартовая отрисовка
  final TypeButton typeButton;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> with TickerProviderStateMixin {
  /// время анимации в миллисекундах
  static const timeAnim = 200;

  /// имитация долго нажатия
  bool isLongPress = false;

  /// тени
  bool hasShadowGrey = false;

  /// обводка
  bool hasBorderWhite = false;

  late AnimationController animController;

  @override
  void initState() {
    super.initState();

    /// цвет кнопки по умолчанию
    isLongPress = TypeButton.green == widget.typeButton;

    /// контроллер аниации
    animController = AnimationController(vsync: this);
  }

  void toggle() {
    /// переопределение долго нажатия
    isLongPress = !isLongPress;

    /// тень для зеленой кнопки и не активной кнопки
    hasShadowGrey = isLongPress && widget.isDisabled;

    /// зеленая рамка для белой кнопки
    hasBorderWhite = isLongPress && TypeButton.white == widget.typeButton;
    setState(() {});
  }

  Widget animateText() {
    return AnimatedCrossFade(
      /// анимация текста
      crossFadeState: widget.isDisabled
          ? CrossFadeState.showFirst
          : isLongPress
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: timeAnim),
      firstChild: AppText(
        widget.title,
        type: AppTextType.interM17,
        color: AppColors.white,
      ),
      secondChild: AppText(
        widget.title,
        type: AppTextType.interM17,
        color: AppColors.accent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        if (widget.isDisabled) return;
        toggle();
      },
      onTapUp: (details) {
        if (widget.isDisabled) return;
        toggle();
      },
      onTap: () => widget.onPressed?.call(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: timeAnim),
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: widget.isDisabled
              ? AppColors.optGrey
              : isLongPress
                  ? AppColors.accent
                  : AppColors.background,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: widget.isDisabled
                ? AppColors.optGrey
                : hasBorderWhite
                    ? AppColors.background
                    : AppColors.accent,
            width: 2,
          ),
          boxShadow: [
            if (hasShadowGrey)
              BoxShadow(
                color: AppColors.shadowGrey.withOpacity(.85),
                offset: const Offset(1, 1),
                blurRadius: 3,
              )
            else
              BoxShadow(
                color: AppColors.shadowGreen.withOpacity(.58),
                offset: const Offset(1, 1),
                blurRadius: 3,
              ),
          ],
        ),
        child: animateText(),
      ),
    );
  }
}
