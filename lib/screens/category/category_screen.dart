import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';

import '../../models/list_category_menu.dart';
import '../components/custom_actions.dart';
import '../components/text_menu_card.dart';
import 'components/extends_icon_text_card.dart';

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
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverToBoxAdapter(
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
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                listCategoryMenuList.length,
                (index) => ExtendsIconTextCard(
                  item: listCategoryMenuList[index],
                )
              )
            )
          )
        ],
      ),
    );
  }
}
