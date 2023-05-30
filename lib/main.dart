import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Trans;
import 'package:unde_salesman/app_config.dart';
import 'package:unde_salesman/core/language_service.dart';
import 'package:unde_salesman/ui/router/routing.dart';
import 'package:unde_salesman/ui/shared/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await AppConfig().load();

  await _initServices();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight,
  ]).whenComplete(
    () async {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: AppColors.background,
          statusBarIconBrightness: Brightness.dark, // цвет иконок
          systemNavigationBarColor: AppColors.background,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
      final lang = Get.find<LanguageScreenService>();

      runApp(
        EasyLocalization(
          supportedLocales: lang.mapLang.keys.map(Locale.new).toList(),
          path: 'assets/translations',
          startLocale: Locale(lang.language().name),
          fallbackLocale: Locale(lang.language().name),
          child: const App(),
        ),
      );
    },
  );
}
//

///
class App extends StatelessWidget {
  /// конструктор
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      initialRoute: AppRoutes.signup,
      getPages: routes,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.background,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.accent),
        // primarySwatch: AppColors.primary
      ),
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        if (deviceLocale != context.locale) {
          Future<void>.delayed(Duration.zero)
              .then((_) => Get.updateLocale(context.locale));
        }

        Get.find<LanguageScreenService>().startLang(deviceLocale, context);
        return deviceLocale;
      },
    );
  }
}

Future<void> _initServices() async {
  Get.put(LanguageScreenService());
}
