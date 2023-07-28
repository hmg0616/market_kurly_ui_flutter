import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';

import '../../theme.dart';
import 'components/stack_product_item.dart';

class RecommendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text("추천"),
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "베이커리 인기 급상승 랭킹",
                style: textTheme().headline1,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StackProductItem(
                  width: 160,
                  item: productList[index],
                  number: index + 1,
                ),
                itemCount: productList.length,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("후기가 좋은 상품", style: textTheme().headline1),
            ),
            const SizedBox(height: 15),
            Container(
              height: 360,
              color: Colors.red[100],
              child: Center(
                child: Text("수평 스크롤 영역 2"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
