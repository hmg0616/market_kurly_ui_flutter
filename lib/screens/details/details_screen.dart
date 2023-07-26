
import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product_detail_arguments.dart';
import 'package:market_kurly_ui/screens/details/components/body.dart';

import '../../constants.dart';
import '../../theme.dart';
import '../components/default_button.dart';

class DetailsScreen extends StatelessWidget {

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {

    // 화면이 갱신될때, 즉 build가 호출될 때 ModalRoute 객체를 이용해서 arguments 속성을 받을 수 있음.
    // arguments 타입이 Object?이기 때문에 사용하기 위해서는 ProductDetailsArguments 객체로 자료형을 변환해 주어야함.
    // flutter에서는 as 로 형 변환 가능.
    final arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "${arguments.product.title}",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        )
      ),
      body: Body(
        product: arguments.product
      ),
      bottomNavigationBar: SafeArea( // 하단 노치 영역과 위젯 사이에 충분한 패딩을 주기 위해 사용
        child: Column( // 여기서 Column은 bottomNavigationBar 크기에 제약을 주기위해 사용
          mainAxisSize: MainAxisSize.min, // min : 크기만큼만 영역 차지, max : 남은 영역 모두 사용
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
