import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/components/product_item.dart';
import 'package:market_kurly_ui/screens/home/components/product_filter_button.dart';

import '../../../models/product.dart';
import 'circle_container.dart';

class ThriftyShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList( // 단일 위젯의 경우 SliverToBoxAdapter를 사용하는 것이 좋음. 하지만 여기서는 여러 개의 자식 상자(위젯)을 만들떄 사용하는 SliverList 사용
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/images/kurly_banner_1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  child: ProductFilterButton(),
                  width: 100,
                ),
              )
            ]
          )
        ),
        SliverPadding( // 다른 Sliver 위젯의 측면에 패딩을 적용하는 Sliver
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 30.0,
              childAspectRatio: 0.6
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index]
                    ),
                    Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                        iconPath: 'assets/icons/shopping-cart.svg',
                      ),
                    )
                  ],
                );
              },
              childCount: productList.length
            ),
          )
        )
      ],
    );
  }
}
