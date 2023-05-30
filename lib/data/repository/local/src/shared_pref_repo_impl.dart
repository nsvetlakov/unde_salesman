// import 'package:shared_preferences/shared_preferences.dart';
import 'package:unde_salesman/data/repository/local/local_repository.dart';

/// Репозиторий для работы с SharedPreferences
class SPRepositoryImpl with SPRepositoryImplMixin implements LocalRepository {
  SPRepositoryImpl._();

  /// Синглтон
  static final SPRepositoryImpl instance = SPRepositoryImpl._();
}

/// Миксин сделан для удобства вынесения второстепенной логики в репах
mixin SPRepositoryImplMixin {
  // SharedPreferences? _pref;

  // Future _init() async {
  //   _pref ??= await SharedPreferences.getInstance();
  //   return;
  // }

  // Future _saveString(String key, String data) async {
  //   await _init();
  //   await _pref?.setString(key, data);
  // }

  // Future<String> _getString(String key, {String? def}) async {
  //   return _init().then((_) => _pref?.getString(key) ?? def ?? '');
  // }
}
