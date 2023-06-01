import 'package:flutter/material.dart';
import 'package:unde_salesman/ui/router/routing.dart';
import 'package:unde_salesman/ui/screens/a_tmp_screens/tmp_controller.dart';
import 'package:unde_salesman/ui/shared/ext.dart';
import 'package:vfx_flutter_common/vfx_flutter_common.dart';

/// Экран для всех экранов (отладка)
class TmpScreens extends StatexWidget<TmpScreensController> {
  /// Экран для всех экранов (отладка)
  const TmpScreens({Key? key}) : super(TmpScreensController.new, key: key);

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Временный Список экранов'.hardcoded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: const [
            _Button(AppRoutes.splash),
            _Button(AppRoutes.login),
            _Button(AppRoutes.signup),
            _Button(AppRoutes.wizzard),
          ],
        ),
      ),
    );
  }
}

class _Button extends GetViewSim<TmpScreensController> {
  const _Button(this.route);

  final String route;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        c.goTo(route);
      },
      child: Text(route),
    );
  }
}
