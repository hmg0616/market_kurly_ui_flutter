import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/models/nav_item.dart';
import 'package:market_kurly_ui/screens/category/category_screen.dart';
import 'package:market_kurly_ui/screens/home/home_screen.dart';
import 'package:market_kurly_ui/screens/my_kurly/my_kurly_screen.dart';
import 'package:market_kurly_ui/screens/recommend/recommend_screen.dart';
import 'package:market_kurly_ui/screens/search/search_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreens extends StatefulWidget { // 화면이 변경되어야 하는 위젯이기 떄문에 StatefulWidget 사용

  static String routeName = "/main_screens";

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold : 기본적인 시각적 레이아웃 구조를 간편하게 만들어 주는 위젯
      body: IndexedStack( // IndexedStack : 한 번에 하위 항목 하나만을 보여주는 위젯
        index: _selectedIndex,
        children: [
          HomeScreen(), // index 0
          RecommendScreen(), // index 1
          CategoryScreen(), // index 2
          SearchScreen(), // index 3
          MyKurlyScreen() // index 4
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( // 하단 네비게이션 바
        type: BottomNavigationBarType.fixed, // 3개 이상 item 표시할때 설정
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex, // 현재 선택된 인덱스
        backgroundColor: Colors.white,
        onTap: onTaped, // 사용자 클릭 시 이벤트
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
            icon: navItems[index].icon,
            label: navItems[index].label,
            isActive: navItems[index].id == _selectedIndex ? true : false
          )
        ),
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem({String? icon,  String? label, bool isActive = false, GestureTapCallback? press}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        width: 38,
        height: 38,
        child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(
            icon ?? "assets/icons/star.svg",
            color: isActive? kPrimaryColor : Colors.black,
          ),
        ),
      ),
      label: label
    );
  }
}
