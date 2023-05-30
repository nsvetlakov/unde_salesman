import 'package:flutter/foundation.dart';
import 'package:unde_salesman/data/repository/repository.dart';

/// Репозиторий
abstract class Repository extends ChangeNotifier {
  /// Синглтон
  static RepositoryImpl makeInstance() => RepositoryImpl.makeInstance();
}
