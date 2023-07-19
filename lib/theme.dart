import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: kPrimaryColor,
      elevation: 0.0
    ),
    primaryColor: kPrimaryColor, // 앱의 브랜드 색상 설정
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor), // 선택된 텍스트 모양을 정의하는 위젯, 여기서는 cursorColor 정의하기 위해 사용
    visualDensity: VisualDensity.adaptivePlatformDensity, // 모바일, web, 데스크톱 등 플랫폼에서 자연스럽게 보이도록하기 위해 사용
  );
}

TextTheme textTheme() {
  return TextTheme( // TextTheme 재정의
    headline1: GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold), // H1
    headline2: GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold), // H2
    bodyText1: GoogleFonts.nanumGothic(fontSize: 16.0),
    bodyText2: GoogleFonts.nanumGothic(fontSize: 14.0),
    subtitle1: GoogleFonts.nanumGothic(fontSize: 15.0),
  );
}