import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../models/home_banner.dart';
import 'box_border_text.dart';
import 'number_indicator.dart';

class KurlyBannerItem extends StatefulWidget {

  @override
  _KurlyBannerItemState createState() => _KurlyBannerItemState();
}

class _KurlyBannerItemState extends State<KurlyBannerItem> {

  final List<HomeBanner> list = homeBannerList;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder( // 여러 페이지를 한 화면에서 보여줌, 기본 스크롤 : 수평방향
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage( // 배경을 이미지 파일로 꾸밈
                      image: AssetImage(list[index].bannerImage),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 16,
                  child: BoxBorderText(
                    title: list[index].eventTitle,
                    subTitle: list[index].eventContent,
                  )
                )
              ],
            );
          },
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
        Positioned( // PageView 에 들어가면 스크롤 할때 같이 움직이므로 따로 뺌
          bottom: 16,
          right: 16,
          child: NumberIndicator(
            currentPage: currentPage + 1,
            length: list.length,
          )
        )
      ],
    );
  }
}
