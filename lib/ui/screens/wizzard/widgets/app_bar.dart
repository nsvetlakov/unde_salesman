import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/screens/wizzard/wizzard_controller.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';

/// AppBar для экрана Onboarding
class AppBarOnboarding extends GetView<WizzardScreenController>
    implements PreferredSizeWidget {
  /// Конструктор
  const AppBarOnboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.accent,
      elevation: 0,
      title: AppIcons.img(AppIcons.logo),
      leadingWidth: 111, // ширина левого элемента
      leading: Row(
        children: [
          16.w,
          CountryFlag(
            country: Country.fromCode('ru'),
            height: 20,
          ),
          4.w,
          const AppText('RUS', type: AppTextType.interM17),
          4.w,
          AppIcons.img(AppIcons.langArrow),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(0, 60);
}
