import 'package:unde_salesman/data/repository/local/local_repository.dart';
import 'package:unde_salesman/logic/repository/repository.dart';

/// Репозиторий
class RepositoryImpl extends Repository {
  RepositoryImpl._({LocalRepository? local})
      : _local = local ?? LocalRepository.makeInstance();

  /// Синглтон
// ignore: prefer_constructors_over_static_methods
  static RepositoryImpl makeInstance() {
    return _instance ??= RepositoryImpl._();
  }

  static RepositoryImpl? _instance;

  // ignore: unused_field
  final LocalRepository _local;
}
