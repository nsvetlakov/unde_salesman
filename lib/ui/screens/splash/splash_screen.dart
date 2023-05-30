import 'package:flutter/material.dart';
import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/screens/splash/splash_controller.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';
import 'package:vfx_flutter_common/vfx_flutter_common.dart';

/// Стартовый экран
class SplashScreen extends StatexWidget<SplashScreenController> {
  /// Конструктор
  const SplashScreen({Key? key}) : super(SplashScreenController.new, key: key);

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.accent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcons.img(AppIcons.logo, height: 69),
            16.h,
            const AppText(
              'Product search app',
              type: AppTextType.interM24,
              color: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
