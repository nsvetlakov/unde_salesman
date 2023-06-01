import 'package:get/get.dart' hide Trans;
import 'package:unde_salesman/ui/screens/a_tmp_screens/tmp_screens.dart';
import 'package:unde_salesman/ui/screens/auth/login/login_screen.dart';
import 'package:unde_salesman/ui/screens/auth/signup/signup_screen.dart';
import 'package:unde_salesman/ui/screens/splash/splash_screen.dart';
import 'package:unde_salesman/ui/screens/wizzard/wizzard_screen.dart';

/// Роуты приложения
class AppRoutes {
  /// Все экраны
  static const String tmpScreens = '/tmp_screens';

  /// Стартовый экран
  static const String splash = '/';

  /// Экран onboarding
  static const String wizzard = '/wizzard';

  /// Экран авторизации
  static const String login = '/login';

  /// Экран регистрации
  static const String signup = '/signup';
}

/// Роутинг
final List<GetPage<dynamic>> routes = [
  GetPage(
    name: AppRoutes.tmpScreens,
    page: TmpScreens.new,
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.splash,
    page: SplashScreen.new,
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.wizzard,
    page: WizzardScreen.new,
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.login,
    page: LoginScreen.new,
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.signup,
    page: SignupScreen.new,
    transition: Transition.fadeIn,
  ),
];
