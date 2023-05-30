import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/ui/screens/wizzard/wizzard_controller.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/icons.dart';

/// AppBar для экрана auth
class AppBarAuth extends GetView<WizzardScreenController>
    implements PreferredSizeWidget {
  /// Конструктор
  const AppBarAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      title: AppIcons.img(AppIcons.logoGreen),
    );
  }

  @override
  Size get preferredSize => const Size(0, 50);
}
