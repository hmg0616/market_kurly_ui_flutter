import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/list_category_menu.dart';

class ExtendsIconTextCard extends StatefulWidget {

  final ListCategoryMenu item;
  const ExtendsIconTextCard({super.key, required this.item}); // 데이터 넘겨받기 위한 생성자

  @override
  State<ExtendsIconTextCard> createState() => _ExtendsIconTextCardState(item); // State로 데이터 전달
}

class _ExtendsIconTextCardState extends State<ExtendsIconTextCard> {

  _ExtendsIconTextCardState(this.item); // 데이터 넘겨받기 위한 생성자 ( 외부 -> ExtendsIconTextCard -> _ExtendsIconTextCardState 로 전달 )

  final ListCategoryMenu item;
  bool isShow = false; // 확장된 컨테이너의 현재 상태 저장

  void toggle() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 8),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(item.icon),
                ),
                const SizedBox(width: 15),
                Text(item.title),
                const Spacer(),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    onPressed: () {
                      toggle(); // 사용자가 아이콘 버튼 클릭 시 toggle 메서드 실행
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/down-arrow.svg",
                      color: Colors.grey,
                    )
                  ),
                )
              ],
            ),
          ),
          AnimatedContainer( // 애니매이션 기능 제공. duration : 애니메이션의 완료될 때 까지의 시간 정의, curve : 물리적인 속도 정의
            duration: const Duration(microseconds: 350),
            curve: Curves.fastOutSlowIn,
            height: isShow ? 100: 0,
            decoration: BoxDecoration(color: Colors.blue[200]),
            child: Center(child: Text("${item.title}")),
          )
        ],
      ),
    );
  }
}
