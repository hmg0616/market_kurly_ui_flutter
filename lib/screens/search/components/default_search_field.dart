import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {
  @override
  State<DefaultSearchField> createState() => _DefaultSearchFieldState();
}

class _DefaultSearchFieldState extends State<DefaultSearchField> {

  FocusNode _focusNode = FocusNode(); // FocusNode는 StatefulWidget에서 키보드의 focus 상태를 얻고 키보드 이벤트를 처리하는 데 사용
  bool isFocus = false; // FocusNode 상태 저장하기 위한 변수

  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide'); // Flutter에서 키보드를 해제하는 방법.
                                                             // 키보드가 활성화된 상태에서 앱이 종료되거나 전화가 왔을 때처럼 focus된 상태를 제거하고
                                                             // 사용하지 않는 FocusNode를 제공해 키보드를 종요 할 수 있음.
    _focusNode.addListener(() { // focusNode에 이벤트 리스너 추가
      _onFocusChange();
    });
  }

  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }

  void _unFocus() { // 취소를 눌렀을때 focus된 상태를 제거하기 위한 함수
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: _focusNode, // focusNode 등록
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[10],
              hintText: "검색어를 입력해 주세요",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              )
            ),
          )
        ),
        Container(
          width: isFocus ? 50 : 0, // focus 상태에 따라 크기 지정
          child: isFocus
              ? Center(
                child: GestureDetector(
                  onTap: _unFocus, // 취소버튼 클릭시 unfocus 실행
                  child: Text(
                    "취소",
                    style: TextStyle(fontSize: 16)
                  ),
                ),
              )
              : SizedBox(),
        )
      ],
    );
  }

}
