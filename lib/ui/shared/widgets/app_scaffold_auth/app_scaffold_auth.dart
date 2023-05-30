import 'package:flutter/material.dart';
import 'package:unde_salesman/ui/shared/colors.dart';
import 'package:unde_salesman/ui/shared/widgets/app_scaffold_auth/app_bar_auth.dart';

/// Общий scaffold для экранов авторизации
class AppScaffoldAuth extends StatelessWidget {
  /// Конструктор
  const AppScaffoldAuth({
    required this.body,
    super.key,
  });

  /// Виджет
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarAuth(),
      body: SafeArea(child: body),
    );
  }
}
