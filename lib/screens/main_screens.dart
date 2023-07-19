import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget { // 화면이 변경되어야 하는 위젯이기 떄문에 StatefulWidget 사용

  static String routeName = "/main_screens";

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('mainScreens'),
      ),
    );
  }
}
