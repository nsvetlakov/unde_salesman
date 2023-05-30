import 'package:flutter/material.dart';

import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';

/// Чекбокс с текстом
class AppCheckboxText extends StatefulWidget {
  /// Конструктор
  const AppCheckboxText({
    required this.onTap,
    required this.title,
    super.key,
  });

  /// Нажатие на текст или чекбокс
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool) onTap;

  /// Текст
  final String title;
  @override
  State<AppCheckboxText> createState() => _AppCheckboxTextState();
}

class _AppCheckboxTextState extends State<AppCheckboxText> {
  var _value = false;

  void toggleCheckbox() {
    _value = !_value;
    setState(() {});
    widget.onTap(_value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCheckbox,
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: _value ? AppColors.optlightGreen : AppColors.background,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: AppColors.optLineSeparator,
              ),
            ),
          ),
          8.w,
          AppText(
            widget.title,
            type: AppTextType.interM12,
            height: 18,
          ),
        ],
      ),
    );
  }
}
