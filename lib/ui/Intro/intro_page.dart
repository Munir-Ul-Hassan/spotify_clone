import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/ui/custom_widget/common_rounded_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonRoundedButton(
              text: 'Sign up free',
              bgcolor: AppColors.primaryColor,
              onTap: () {},
            ),
            const SizedBox(height: 20), 
            CommonRoundedButton(
              isOutlined: true,
              iconpath: 'assets/logo/google.png',
              text: 'Continue with Google',
              textColor: AppColors.whiteColor,
              onTap: () {},
            ),
            const SizedBox(height: 20), 
            CommonRoundedButton(
              isOutlined: true,
              iconpath: 'assets/logo/facebook.png',
              text: 'Continue with Facebook',
              textColor: AppColors.whiteColor,
              onTap: () {},
            ),
            const SizedBox(height: 20), 
            CommonRoundedButton(
              isOutlined: true,
              iconpath: 'assets/logo/apple.png',
              text: 'Continue with Apple',
              textColor: AppColors.whiteColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
