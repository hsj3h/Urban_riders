import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:urban_riders/mainpages/loginpage.dart';
class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FrontPage()));
    });

    // TODO: implement initState
    super.initState();

  }


  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF475269),
      body: SafeArea(
        child: Center(
          child:Lottie.asset('assets/animation/car_animation.json') ,
        ),
      ),
    );
  }
}
