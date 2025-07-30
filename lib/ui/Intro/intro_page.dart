import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/ui/custom_widget/common_rounded_button.dart';
import 'package:spotify_clone/ui/custom_widget/ui_helper.dart';

import '../../domain/app_routes.dart' show AppRoutes;

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          Image.asset('assets/images/bgimage.png'),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.blackColor.withOpacity(0.3),
                  AppColors.blackColor
                ],
              ),
            ),
          ),
          bottomButtons(context)
        ],
      ),
    );
  }
}
Widget bottomButtons(BuildContext context){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 40),
    child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo/logo.png',
                height: 80,
                width: 80,
              ),
              Text('Millions of songs \n free on Spotify.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold)),
                      mSpacer(mheight: 20),
              CommonRoundedButton(
                text: 'Sign up free',
                bgcolor: AppColors.primaryColor,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.register );
                },
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
              mSpacer(),
              TextButton(onPressed: (){}, child: Text('Log In',style: TextStyle(fontSize: 16,color: Colors.white),)),
            ],
          ),
  );
}
