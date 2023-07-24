import 'package:flutter/material.dart';

import '../../theme.dart';
import 'kurly_sign_form.dart';

class SignInScreen extends StatelessWidget {

  static String routeName = "/sign_in";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "로그인",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false, // 뒤로가기 화살표 자동 생성
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        )
      ),
      body: KurlySignForm(),
    );
  }
}
