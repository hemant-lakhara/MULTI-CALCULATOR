import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Pressure extends StatefulWidget {
  const Pressure({Key? key}) : super(key: key);

  @override
  State<Pressure> createState() => _PressureState();
}

class _PressureState extends State<Pressure> {
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
          ),
          Lottie.asset("Assets/80064-pressure.json",height: height*2),
        ],
      ),
    );
  }
}
