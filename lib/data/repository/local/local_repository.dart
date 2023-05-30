import 'package:unde_salesman/data/repository/local/src/shared_pref_repo_impl.dart';

export 'src/shared_pref_repo_impl.dart';

/// Абстракция локального репозитория.
abstract class LocalRepository {
  /// Синглтон
  static LocalRepository makeInstance() => SPRepositoryImpl.instance;
}
