import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_kurly_ui/screens/components/stack_icon.dart';

// appBar에 사용할 actions 버튼 정의. 여러 화면에서 사용되기 때문에 따로 구현해둠.
class CustomActions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: 38,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/pin.svg",
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 38,
            child: StackIcon(
              imgPath: "assets/icons/shopping-cart.svg",
              onPressed: () {},
              counter: "2",
            ),
          )
        ],
      ),
    );
  }
}
