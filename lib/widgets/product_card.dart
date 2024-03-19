import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';

class productCard extends StatelessWidget {
  const productCard({
    super.key, required this.itemIndex, required this.product, required this.press,
  });
  final int itemIndex;
  final Product product;
  final Function() press;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2,
          vertical: kDefaultPadding/2),
      height: 190.0,

      child: InkWell(
        onTap: press,
        child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
        Container(
        height: 180.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
        boxShadow:const [ BoxShadow(
        offset: Offset(2,15),
        blurRadius: 25,
        color: Colors.black12,
        ),
        ],
        ),
        ),
        Positioned(

        left: 0,
        bottom: 10,

        child: Container(

        height: 120.0,
        width: 200.0,
        child: Image.asset(product.image,


        fit: BoxFit.contain,),

        ),
        ),
        Positioned(
        bottom: 15,
        right: 0,
        child:
        SizedBox(
        height: 136,
        width: size.width - 200,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Spacer(),

        Padding(
        padding:const EdgeInsets.symmetric(horizontal: kDefaultPadding/1),
        child: Text(product.title
        ,style:
        const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        ),),
        ),
        const Spacer(),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(product.description,style:
        const TextStyle(fontSize:15,
        fontWeight: FontWeight.normal),),
        ),
        const Spacer(),
        Padding(
        padding: const EdgeInsets.all(kDefaultPadding/3),
        child: Container(
        padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding*1.3,
        vertical: kDefaultPadding/5
        ),
        decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(22),

        ),
        child: Text("السعر : \$${product.price}"),
        ),
        ),
        ],
        ),

        ),
        ),
        ],
        ),
      ),


    );
  }
}
