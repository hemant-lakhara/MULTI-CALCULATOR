import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'my_calculator.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Calculation()));
    });
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width*1,
            height: height*1,
            color: Colors.white,
            child: Lottie.asset("Assets/39420-calculator.json"),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.75,left: width*0.1),
            child: Text("CALCULATOR",style: TextStyle(color: Colors.orange,fontSize: 40,fontFamily: "SEASRN__"),),
          )
        ],
      ),
    );
  }
}
