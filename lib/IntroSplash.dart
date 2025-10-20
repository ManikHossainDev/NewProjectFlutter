
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/Callback.dart';

class IntroSplash extends StatefulWidget{
  @override
  State<IntroSplash> createState() => _IntroSplashState();
}

class _IntroSplashState extends State<IntroSplash> {

  @override
  void initState() {
    super.initState();

    Timer( Duration(seconds: 5), (){
       Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => DashBordScreen(),
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
         child: Center(
           child: Text("Manik Hossain", style: TextStyle(
             fontSize: 34,
             fontWeight: FontWeight.w700,
             color: Colors.white,
           ),),
         ),
      ),
    );
  }
}