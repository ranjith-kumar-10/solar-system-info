import 'package:flutter/material.dart';
import 'package:ranjith_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:ranjith_s_application3/presentation/login_screen/login_screen.dart';
import 'package:ranjith_s_application3/presentation/home_container_screen/home_container_screen.dart';
import 'package:ranjith_s_application3/presentation/inner_page_screen/inner_page_screen.dart';
import 'package:ranjith_s_application3/presentation/profile_screen/profile_screen.dart';
import 'package:ranjith_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String innerPageScreen = '/inner_page_screen';

  static const String favouritesPage = '/favourites_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    innerPageScreen: (context) => InnerPageScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
