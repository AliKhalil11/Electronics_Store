import 'package:flutter/material.dart';

import '../../constants.dart';

class ProductImge extends StatelessWidget {
  const ProductImge({
    super.key,
    required this.size, required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/1),
      height: size.width*0.7,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width*0.7,
            width: size.width*0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,

            ),
          ),
          Center(
            child: Image.asset(image,
              width: size.width*0.50,
              height: size.width*0.50,
              fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }
}
