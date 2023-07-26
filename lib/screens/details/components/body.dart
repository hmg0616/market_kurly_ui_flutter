import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/string_extensions.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {

  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 300,
          child: Image.network(
            product.imageUrl ?? "",
            fit: BoxFit.cover
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // 가로 최대 확장
            children: [
              Text(
                product.title ?? "",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "상세보기 화면 입니다.",
                style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "${product.price.toString().numberFormat()}원",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "로그인 후, 적립혜택이 제공됩니다.",
                style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
