import 'package:get/get.dart';
import 'package:unde_salesman/ui/screens/a_tmp_screens/tmp_screens.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

/// Контроллер стартового экрана
class TmpScreensController extends StatexController<TmpScreens> {
  /// Переход на страницу
  void goTo(String route) {
    Get.toNamed<void>(route);
  }
}
