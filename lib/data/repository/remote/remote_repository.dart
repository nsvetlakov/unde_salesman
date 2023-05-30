import 'package:unde_salesman/data/repository/remote/src/remote_remote_repo_impl.dart';

/// Абстракция удаленного репозитория.
abstract class RemoteRepository {
  /// Синглтон
  static RemoteRepository makeInstance() => RemoteRepositoryImpl.makeInstance();
}
