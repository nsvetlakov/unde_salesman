import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/screens/wizzard/widgets/app_bar.dart';
import 'package:unde_salesman/ui/screens/wizzard/widgets/footer.dart';
import 'package:unde_salesman/ui/screens/wizzard/wizzard_controller.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/style/style.dart';
import 'package:unde_salesman/ui/shared/widgets/buttons/app_button.dart';
import 'package:vfx_flutter_common/vfx_flutter_common.dart';

/// Экран Onboarding
class WizzardScreen extends StatexWidget<WizzardScreenController> {
  /// Конструктор
  const WizzardScreen({Key? key})
      : super(WizzardScreenController.new, key: key);

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: const AppBarOnboarding(),
      body: Container(
        color: AppColors.accent,
        padding: const EdgeInsets.only(
          top: 50,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Obx(
              () {
                /// чисто для перерисовки виджета
                /// чтоб в конце пояивилась кнопка
                controller.currentindex();

                return Expanded(
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller.pageController,
                    itemCount: controller.wizzardList.length,
                    onPageChanged: controller.currentindex.call,
                    itemBuilder: (context, index) {
                      final wizzard = controller.wizzardList[index];
                      return Column(
                        children: [
                          //== здесь потом будет картинка
                          //== заменить весь контейнер на картинку
                          Container(
                            width: Get.width,
                            padding: const EdgeInsets.symmetric(vertical: 75),
                            color: AppColors.optGrey,
                            child: AppIcons.img(
                              wizzard.imgPath,
                              width: 156,
                              height: 156,
                            ),
                          ),
                          40.h,
                          AppText(
                            wizzard.title,
                            type: AppTextType.interM24,
                            color: AppColors.background,
                          ),
                          16.h,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 44),
                            child: AppText(
                              wizzard.description,
                              type: AppTextType.interR17,
                              textAlign: TextAlign.center,
                              height: 27,
                            ),
                          ),
                          if (!controller.isLast) ...[
                            37.h,
                            AppButton(
                              onPressed: controller.goToLogin,
                              title: 'Get started',
                              typeButton: TypeButton.white,
                            ),
                          ],
                        ],
                      );
                    },
                  ),
                );
              },
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
