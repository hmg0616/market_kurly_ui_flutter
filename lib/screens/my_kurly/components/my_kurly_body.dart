import 'package:flutter/material.dart';

import '../../../models/text_menu.dart';
import '../../components/text_menu_card.dart';
import 'my_kurly_header.dart';

class MyKurlyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        _buildingPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics: ClampingScrollPhysics(), // 스크롤이 콘텐츠 범위를 벗어나지 않도록함
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
                title: textMenuList[index].text,
                icon: textMenuList[index].icon,
                press: () {}
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        _buildingPaddingTextMenuCard("컬리 소개", () {}),
      ],
    );
  }

  Padding _buildingPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black
        )
      )
    );
  }
}
