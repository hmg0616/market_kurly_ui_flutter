import 'package:flutter/material.dart';

import '../../../theme.dart';

class ProductFilterButton extends StatefulWidget {
  @override
  _ProductFilterButtonState createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {

  String _selectedUItem = '신상품순';
  List _options = ['신상품순', '인기순', '혜택순'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: Offset(0, 0),
      icon: Align( // 아이콘 버튼 ( 팝업 띄우기전 버튼 UI )
        alignment: Alignment.bottomRight,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("$_selectedUItem", style: textTheme().bodyText2?.copyWith(color: Colors.black)),
              Icon(Icons.arrow_drop_down, color: Colors.black)
            ],
          ),
          onPressed: null,
        ),
      ),
      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (context) { // 팝업에 뜨는 아이템들
        return _options.map((option) => PopupMenuItem(
            child: Text("$option", style: textTheme().bodyText2), // 팝업에 뜨는 내용
            value: option // 인덱스로 사용될 값
        )).toList();
      },
    );
  }
}
