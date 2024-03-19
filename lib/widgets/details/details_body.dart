import 'package:flutter/material.dart';


import '../../constants.dart';
import '../../models/product.dart';
import 'Product_Image.dart';
import 'color_point.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,

          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/1),
          height: 550,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: ProductImge(size: size, image: product.image,)),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding/1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Color_point(fillColor: kTextLightColor,
                    isSelecte: true,),
                    Color_point(fillColor:Colors.blue ,
                      isSelecte: false,),
                    Color_point(fillColor: Colors.red,
                      isSelecte: false,)
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                child: Text(product.title,style:
                  const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
              ),
               Text("السعر:\$${product.price}",style:
                const TextStyle(fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor),),
              const SizedBox(height: kDefaultPadding/1,)
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*1.5),
          child:
          Text(product.subTitle,style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 17,
            color: Colors.black,
          ),),
        )
      ],
    );
  }
}

