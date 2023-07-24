import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme.dart';
import '../components/custom_actions.dart';
import 'components/benefit_page.dart';
import 'components/kurly_page.dart';
import 'components/new_product_page.dart';
import 'components/thrifty_shopping_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];
    return DefaultTabController( // TabBar 또는 TabBarView와 TabController를 공유하는 데 사용되는 상속된 위젯
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Kurly"),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.3)
                ),
                color: Colors.white
              ),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(text: categories[index])
                ),
                labelColor: kPrimaryColor, // 선택된 탭 색상
                unselectedLabelColor: kSecondaryColor, // 선택되지 않은 탭 색상
                labelStyle: textTheme().headline2?.copyWith(
                  color: kPrimaryColor, fontWeight: FontWeight.bold
                ),
                indicator: UnderlineTabIndicator( // 선택한 탭 아래에 표시되는 선의 색상
                  borderSide: BorderSide(color: kPrimaryColor, width: 2)
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42),
          ),
        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage()
          ],
        ),
      )
    );
  }
}
