import 'package:flutter/material.dart';

import '../../constants.dart';

class Color_point extends StatelessWidget {
  const Color_point({
    super.key, required this.fillColor, this.isSelecte=false,
  });
  final Color fillColor;
  final bool isSelecte;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2.5),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelecte ? kTextLightColor
              : Colors.transparent)
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}

