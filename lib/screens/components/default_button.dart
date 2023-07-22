import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/theme.dart';

class DefaultButton extends StatelessWidget {

  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const DefaultButton({super.key, this.text, this.press, this.color = kPrimaryColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( // 버튼을 강조하고 싶을 때 사용. (색깔 버튼)
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.all(16)
      ),
      onPressed: press,
      child: Center(
        child: Text(
          text ?? "",
          style: textTheme().subtitle1,
        )
      )
    );
  }
}
