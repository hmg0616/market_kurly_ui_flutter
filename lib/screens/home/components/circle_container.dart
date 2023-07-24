import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CircleContainer extends StatelessWidget {

  final String? iconPath;

  CircleContainer({this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.5),
        color: kPrimaryColor.withOpacity(0.6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SvgPicture.asset(
          iconPath ?? "assets/icons/star.svg",
          color: Colors.white,
        ),
      ),
    );
  }
}
