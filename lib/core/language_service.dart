import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unde_salesman/data/repository/local/local_repository.dart';
import 'package:vfx_flutter_common/get_rx_decorator.dart';

/// языки приложения
enum LanguageApp {
  /// русский
  ru,

  /// английский
  en,
}

/// расширение для enum
extension LanguageAppEx on LanguageApp {
  /// получить имя
  String get name => describeEnum(this);
}

/// Сервис изменения языка в приложении
class LanguageScreenService extends GetxService {
  /// конструктор
  LanguageScreenService({LocalRepository? repo})
      : repoLocal = repo ?? SPRepositoryImpl.instance;

  /// репозиторий
  final LocalRepository repoLocal;

  /// язык приложения
  final language = LanguageApp.ru.obsDeco();

  /// выбор языка
  final mapLang = {
    'ru': Language(lang: 'Русский', path: ''),
    'en': Language(lang: 'English', path: ''),
  };

  /// получить язык
  bool selectedLang(String lang) => language().name == lang;

  LanguageApp _lang(String l) => LanguageApp.values.byName(l);

  /// изменить язык
  Future<void> changeLanguage(String lang, BuildContext context) async {
    language(_lang(lang));

    /// установить язык
    await EasyLocalization.of(context)?.setLocale(Locale(lang));
  }

  /// установить язык
  Future<void> startLang(Locale? locale, BuildContext context) async {
    language(_lang(locale?.languageCode ?? 'ru'));
    await EasyLocalization.of(context)?.setLocale(context.locale);
  }
}

/// язык модель
class Language {
  /// конструктор
  Language({required this.path, required this.lang});

  /// путь
  final String path;

  /// язык
  final String lang;
}
