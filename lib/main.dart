import 'package:flutter/material.dart';
import 'package:market_kurly_ui/routes.dart';
import 'package:market_kurly_ui/screens/splash/splash_screen.dart';
import 'package:market_kurly_ui/theme.dart';

void main() {
  runApp(MarketKurly());
}

class MarketKurly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Market Kurly UI",
      initialRoute: SplashScreen.routeName, // 첫 화면 지정
      routes: route, // navigation 화면들 등록
      theme: theme(),
    );
  }
}