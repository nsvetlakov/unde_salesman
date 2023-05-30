import 'package:flutter/material.dart';
import 'package:unde_salesman/core/ext.dart';
import 'package:unde_salesman/ui/shared/icons.dart';
import 'package:unde_salesman/ui/shared/widgets/app_checkbox_text.dart';
import 'package:unde_salesman/ui/shared/widgets/app_input.dart';
import 'package:unde_salesman/ui/shared/widgets/app_scaffold_auth/app_scaffold_auth.dart';
import 'package:unde_salesman/ui/shared/widgets/buttons/animate_text.dart';
import 'package:unde_salesman/ui/shared/widgets/buttons/app_button.dart';

/// Экран регистрации
class SignupScreen extends StatelessWidget {
  /// Конструктор
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldAuth(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            30.h,
            const AppInput(
              label: 'login',
              hintText: 'Put your email',
            ),
            34.h,
            AppInput(
              label: 'Password',
              hintText: 'Put your password',
              suffixIcon: AppIcons.eyeStates,
              onTapIcon: () {},
            ),
            34.h,
            AppInput(
              label: 'Password confirmation',
              hintText: 'Confirm your password',
              suffixIcon: AppIcons.eyeStates,
              onTapIcon: () {},
            ),
            16.h,
            AppCheckboxText(
              title: 'Remember password',
              onTap: (b) {
                debugPrint('Remember password = $b');
              },
            ),
            64.h,
            AppButton(
              title: 'Sign up',
              onPressed: () {},
              isDisabled: true,
            ),
            8.h,
            AnimateText(
              text: 'Do you already have an account? Sign in!',
              onPressed: () {
                debugPrint('Sign in!');
              },
            ),
            100.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.img(
                    AppIcons.authGoogle,
                    width: 46,
                    height: 46,
                  ),
                  iconSize: 46,
                ),
                8.w,
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.img(
                    AppIcons.authFacebook,
                    width: 46,
                    height: 46,
                  ),
                  iconSize: 46,
                ),
                8.w,
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.img(
                    AppIcons.authApple,
                    width: 46,
                    height: 46,
                  ),
                  iconSize: 46,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
