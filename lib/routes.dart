
import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/main_screens.dart';
import 'package:market_kurly_ui/screens/splash/splash_screen.dart';

// 화면 경로 관리
final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens()
};