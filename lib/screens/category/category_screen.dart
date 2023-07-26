import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';

import '../components/custom_actions.dart';
import '../components/text_menu_card.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("카테코리"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding( // CustomScrollView안에 단일 위젯을 생성할 때는 SliverToBoxAdapter를 사용하는것이 좋음
            padding: const EdgeInsets.symmetric(vertical: 12),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 60,
                child: TextMenuCard(
                  title: "자주 사는 상품",
                  icon: "assets/icons/right-arrow.svg",
                  textColor: kPrimaryColor,
                  iconColor: kPrimaryColor,
                  press: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
