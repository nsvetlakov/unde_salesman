import 'package:flutter/material.dart';
import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';
import 'package:unde_salesman/ui/shared/style/type_style.dart';

/// Input App
class AppInput extends StatelessWidget {
  /// Конструктор
  const AppInput({
    super.key,
    this.label,
    this.hintText,
    this.controller,
    this.readOnly = false,
    this.keyboardType,
    this.suffixIcon,
    this.onTapIcon,
  });

  ///
  final String? label;

  ///
  final String? hintText;

  ///
  final TextEditingController? controller;

  ///
  final bool readOnly;

  ///
  final TextInputType? keyboardType;

  ///
  final String? suffixIcon;

  ///
  final void Function()? onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          AppText(
            label!,
            type: AppTextType.interR12,
            height: 18,
          ),
        8.h,
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          style: AppTextStyles.interR17.copyWith(
            color: AppColors.textColor,
          ),
          keyboardType: keyboardType,
          cursorColor: AppColors.textColor,
          cursorWidth: 1,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.interR17.copyWith(
              color: AppColors.optGrey,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            fillColor: AppColors.optlightGreen,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
            constraints: const BoxConstraints(maxHeight: 38),
            suffixIcon: onTapIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: onTapIcon,
                      child: AppIcons.img(suffixIcon ?? AppIcons.noIcon),
                    ),
                  )
                : null,
            suffixIconConstraints: const BoxConstraints(maxHeight: 24),
          ),
        ),
      ],
    );
  }
}
