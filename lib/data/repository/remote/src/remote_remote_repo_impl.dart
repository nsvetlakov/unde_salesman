import 'package:unde_salesman/data/repository/remote/remote_repository.dart';

/// Имплементация
class RemoteRepositoryImpl implements RemoteRepository {
  RemoteRepositoryImpl._();
  static RemoteRepositoryImpl? _instance;

  /// Синглтон
  // ignore: prefer_constructors_over_static_methods
  static RemoteRepositoryImpl makeInstance() {
    return _instance ??= RemoteRepositoryImpl._();
  }
}
