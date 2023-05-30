import 'package:flutter/material.dart';

/// Extension for SizedBox
extension SizedBoxX on num {
  /// Convert width
  SizedBox get w => SizedBox(width: toDouble());

  /// Convert height
  SizedBox get h => SizedBox(height: toDouble());
}
