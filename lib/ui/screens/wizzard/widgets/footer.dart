import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/ui/screens/wizzard/wizzard_controller.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/widgets/buttons/app_text_button.dart';

/// Подвал для экрана Onboarding
class Footer extends GetView<WizzardScreenController> {
  /// Конструктор
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40,
      ),
      child: Obx(
        () {
          final isLast = controller.isLast;
          return ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 40, maxHeight: 40),
            child: Row(
              mainAxisAlignment: isLast
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                if (isLast)
                  AppTextButton(
                    onPressed: () {
                      debugPrint('Skip');
                    },
                    title: 'Skip',
                  ),
                Obx(() {
                  final currentindex = controller.currentindex();
                  final wizzard = controller.wizzardList;
                  return Row(
                    children: [
                      for (var i = 0; i < wizzard.length; i++)
                        Container(
                          width: 16,
                          height: 16,
                          margin: EdgeInsets.only(
                            right: i == wizzard.length - 1 ? 0 : 8,
                          ),
                          decoration: BoxDecoration(
                            color: i == currentindex
                                ? AppColors.textColor
                                : AppColors.optlightGreen,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                    ],
                  );
                }),
                if (isLast)
                  AppTextButton(
                    onPressed: controller.nextPage,
                    title: 'Next',
                    pathIcon: AppIcons.nextArrow,
                    width: 21,
                    height: 14,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
