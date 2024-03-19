

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';
import '../widgets/details/details_body.dart';

class  DetailsScreen  extends StatelessWidget {
  final Product product;
  const  DetailsScreen ({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding/1),
        icon: const Icon(Icons.arrow_back,
        color: kPrimaryColor,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: const Text('رجوع',style:
        TextStyle(
          fontWeight: FontWeight.bold,
        fontSize: 25,
          color: Colors.black
      ),),
    );
  }
}
