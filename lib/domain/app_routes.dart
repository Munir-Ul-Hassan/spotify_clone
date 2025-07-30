import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/create_account/create_account_page.dart';

import '../ui/Intro/intro_page.dart';
import '../ui/splash/splash_page.dart';

class AppRoutes {
  static const String splash = '/splash-page';
  static const String intro = '/intro-page';
  // static const String login = '/login';
  static const String register = '/create-account-page';
  // static const String search = '/search';
  // static const String playlist = '/playlist';
  // static const String songDetails = '/songDetails';
  // static const String settings = '/settings';
static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      splash: (context) => const SplashPage(),
      intro: (context) => const IntroPage(),
      register: (context) => const CreateAccountPage(),
    };
  } 
  // Add more routes as needed
}
