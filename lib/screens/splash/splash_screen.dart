import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/constants.dart';

import '../main_screens.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea( // 자식 위젯에 패딩을 넣어서 디바이스 영역이 앱의 위젯 영역을 침범하는 것을 막아준다.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Kurly",
                  style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
                ),
              )
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: TextButton(
                  child: Text("Continue"),
                  onPressed: () {
                    _completeSplash(context, MainScreens());
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement( // 이전 경로를 없애 주면서 새로운 화면으로 이동
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
