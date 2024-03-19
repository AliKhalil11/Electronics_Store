import 'package:flutter/material.dart';


import '../constants.dart';
import '../widgets/home_body.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
      AppBar homeAppBar()
    {
      return AppBar(
        elevation: 0,
        title: const Text('مرحبا بكم في متجر الالكترونيات',
          style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),),
        centerTitle: false,
        actions: [IconButton(icon: const Icon(Icons.menu),
          onPressed: () {},)
        ],
      );



  }
}
