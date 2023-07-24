import 'package:intl/intl.dart';

extension StringExtension on String { // String 클래스의 기능을 확장하는 확장 메서드
  String numberFormat() {
    final formatter = NumberFormat("#,###");
    return formatter.format(int.parse(this));
  }
}

// 사용 예시
// "1000000".numberFormat() => 1,000,000