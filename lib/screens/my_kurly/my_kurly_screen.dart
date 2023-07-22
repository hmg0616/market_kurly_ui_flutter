import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/components/custom_actions.dart';

class MyKurlyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // 왼쪽 뒤로기가 버튼 없애기
        title: Text('마이컬리'),
        actions: [CustomActions()],
      ),
      body: Center(
        child: Text("MyKurlyScreen"),
      ),
    );
  }
}
