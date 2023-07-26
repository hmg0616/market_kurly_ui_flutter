import 'package:flutter/material.dart';

import '../../../models/benefit_banner.dart';
import '../../../theme.dart';

class BenefitPage extends StatefulWidget {

  @override
  _BenefitPageState createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {

  Future _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator( // 화면에서 스크롤 위젯을 내렸을 경우 새로 고침을 표현하는 위젯과 새로 고침 동작을 처리할 수 있게 도와주는 위젯
      onRefresh: _onRefresh, // onRefresh 속성은 Future를 반환하는 함수로 만들어져야하고 콘텐츠를 업데이트하는 부분으로 사용할 수 있음
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            color: Color(0xeff4e4da * (index + 1)),
            height: 140,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      "${benefitBannerList[index].title}",
                      style: textTheme().bodyText2,
                    ),
                    Text(
                      "${benefitBannerList[index].benefit}",
                      style: textTheme().bodyText2!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer()
                  ],
                ),
                const Spacer(),
                Image.asset(
                  benefitBannerList[index].image,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 22)
              ],
            ),
          ),
        ),
        itemCount: benefitBannerList.length,
      ),
    );
  }
}
