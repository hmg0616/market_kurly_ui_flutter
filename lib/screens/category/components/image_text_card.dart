import 'package:flutter/material.dart';

import '../../../models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {

  final GridCategoryMenu item;

  const ImageTextCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)), // Card위젯은 기본 라운드 처리된 모양임.
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Expanded( // 크기 따로 고정하지 않아, 부모위젯에서 크기에 제약을 설정할 수 있게 함.
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover
                )
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  item.title,
                  style: TextStyle(fontSize: 13),
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}
