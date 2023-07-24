import 'package:flutter/material.dart';

import 'kurly_banner_item.dart';

class KurlyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 335,
          child: KurlyBannerItem(),
        )
      ],
    );
  }
}
