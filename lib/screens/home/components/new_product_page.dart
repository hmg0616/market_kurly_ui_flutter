import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/home/components/product_filter_button.dart';

import '../../../models/product.dart';
import '../../components/product_item.dart';
import 'circle_container.dart';

class NewProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView( // 슬라이더를 직접 제공하여 목록, 그리드 및 확장 헤더와 같은 다양한 스크롤 효과를 생성할 수 있음
        slivers: <Widget>[
          CupertinoSliverRefreshControl( // 콘텐츠 새로고침을 위한 ios 스타일 끌어 오기 구현. 안드로이드폰에서는 동작하지 않음.
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          SliverAppBar( // CustomScrollView와 통합되는 앱바. 앱이 스크롤 될 떄마다 형태를 바꾸거나 사라지는 효과를 만들 떄 사용 가능
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: ProductFilterButton(),
                width: 100,
              )
            ],
          ),
          SliverGrid( // 한 화면에 리스트 뷰와 그리드 뷰만 있다면 각 항목당 개별적 스크롤만 가능함. 다 같이 스크롤 하고 싶거나 더 복잡한 스크롤 뷰 효과를 만들고 싶을 떄 슬리버 리스트와 슬리버 그리드 사용 가능.
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent( // 그리드의 열 너비, 간격 설정. (SliverGridDelegateWithFixedCrossAxisCount 라는것도 있음(열 개수로 설정))
              // 그리드 뷰에 들어올 하나의 항목에 최대 크기를 지정하고 이 값에 따라 교차 축의 범위를 균등하게 나눔
              maxCrossAxisExtent: 200.0, // 열 너비 max 값 ( 이 값에 의해 열 개수가 정해짐 )
              mainAxisSpacing: 30.0, // 아이템 위아래 간격
              crossAxisSpacing: 8.0, // 아이템 양옆 간격
              childAspectRatio: 0.6 // 너비: 높이 비율
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(iconPath: 'assets/icons/shopping-cart.svg')
                    )
                  ],
                );
              },
              childCount: productList.length
            ),
          )
        ],
      ),
    );
  }
}
