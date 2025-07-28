import 'package:flutter/material.dart';

import '../ui/splash/splash_page.dart';

class AppRoutes {
  static const String splash = '/splash-page';
  static const String intro = '/intro-page';
  // static const String login = '/login';
  // static const String register = '/register';
  // static const String search = '/search';
  // static const String playlist = '/playlist';
  // static const String songDetails = '/songDetails';
  // static const String settings = '/settings';
static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      splash: (context) => const SplashPage(),
      // intro: (context) => const IntroPage(),
    };
  } 
  // Add more routes as needed
}
