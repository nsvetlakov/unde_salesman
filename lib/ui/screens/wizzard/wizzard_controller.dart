import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/ui/router/routing.dart';
import 'package:unde_salesman/ui/screens/wizzard/models/wizzard_model.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:vfx_flutter_common/get_rx_decorator.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

/// Контроллер экрана onboarding
class WizzardScreenController extends StatexController {
  /// Конструктор
  WizzardScreenController();

  /// контроллер страницы PageView
  late PageController pageController;

  /// текущий индекс страницы PageView
  final currentindex = 0.obsDeco();

  /// список шагов
  final wizzardList = <WizzardModel>[
    WizzardModel(
      imgPath: AppIcons.noImage,
      title: 'Add your shop',
      description: 'Join the community of progressive and successful sellers',
    ),
    WizzardModel(
      imgPath: AppIcons.noImage,
      title: 'Get a personal QR code',
      description:
          'Customers will be able to scan it and quickly find your shop',
    ),
    WizzardModel(
      imgPath: AppIcons.noImage,
      title: 'Add products',
      description:
          'Fill the shop with the products you want to offer to customers',
    ),
    WizzardModel(
      imgPath: AppIcons.noImage,
      title: 'Get an increase in sales',
      description: 'Earn with our application due to the increase '
          'in the number of buyers',
    ),
  ];

  /// список языкок и их флагов
  List<Language> get languages => Language.values;

  /// достигнут ли последний шаг
  bool get isLast => currentindex.value != wizzardList.length - 1;

  /// переход на следующий шаг
  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  /// переход на авторизации
  void goToLogin() => Get.offNamed<void>(AppRoutes.login);

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }
}
