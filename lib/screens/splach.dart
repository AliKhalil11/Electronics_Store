


import 'dart:async';


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  startTimer(){
    Timer timer = Timer.periodic(
        const Duration(seconds: 5),(time) async {

      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => const  Home())
      );


      time.cancel();
    }
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          Lottie.asset("assets/lottei/9.json",
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height/2,
            fit: BoxFit.fill,),


        ],
        ),
      ),
    );
  }
}
