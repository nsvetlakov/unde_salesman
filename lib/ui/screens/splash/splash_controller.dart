import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/core/utils.dart';
import 'package:unde_salesman/ui/router/routing.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

/// Контроллер стартового экрана
class SplashScreenController extends StatexController {
  /// Конструктор
  SplashScreenController();

  @override
  void onReady() {
    super.onReady();

    debugPrint('$now: SplashScreenController.onReady: ');

    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed<void>(AppRoutes.wizzard);
    });
  }
}
