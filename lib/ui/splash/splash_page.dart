import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double mHeight = 10.0;
  double mWidth = 10.0;

  @override
  void initState() {
    super.initState();
    animate();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.intro);
    });
  }

  void animate() {
    Future.delayed(const Duration(milliseconds: 100), () {
      
      setState(() {
        mHeight = 80.0;
        mWidth = 80.0;
      });
     
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.SecondryblackColor,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          width: mWidth,
          height: mHeight,
          child: Image.asset(
            'assets/logo/logo.png',
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
