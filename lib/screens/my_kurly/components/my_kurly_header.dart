import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../../signin/signin_screen.dart';

class MyKurlyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // child 위젯 간의 공간을 두고, 같은 크기만큼 양 옆에 공간을 둔다.
          children: [
            Spacer(),
            SizedBox(
              width: 250,
              child: Text(
                  "회원 가입하고\n 다양한 혜택을 받아보세요!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18
                  ),
              )
            ),
            SizedBox(height: 8),
            Text(
              "가입 혜택 보기 >",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DefaultButton(
                text: "로그인/회원가입",
                press: () {
                  Navigator.pushNamed(context, SignInScreen.routeName); // 화면 이동
                }
              )
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
