import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/home/components/circle_container.dart';

import '../../../models/product.dart';
import '../../components/product_item.dart';

class StackProductItem extends StatelessWidget {

  final double width;
  final Product item;
  final int number;

  const StackProductItem({super.key, required this.width, required this.item, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          ProductItem(product: item),
          Positioned(
            left: 10,
            bottom: 80,
            child: Text(
              "$number",
              style: TextStyle(fontSize: 40, color: Colors.white),
            )
          ),
          Positioned(
            right: 10,
            bottom: 85,
            child: CircleContainer(iconPath: "assets/icons/star.svg")
          ),
          number == 1
            ? Container( // ProductItem의 InkWell 영역을 덮어 onTap 동작을 막는다.
                height: 190,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5)
                ),
                child: Center(
                  child: Text(
                    "Coming Soon",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            : SizedBox()
        ],
      ),
    );
  }
}
