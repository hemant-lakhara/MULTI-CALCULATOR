import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BmiCal extends StatefulWidget {
  const BmiCal({Key? key}) : super(key: key);

  @override
  State<BmiCal> createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
  var wtcontroller=TextEditingController();
  var htcontroller=TextEditingController();
  var cal=0;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width =size.width;
    var height=size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height*1,
              width: width*1,
              color: Colors.white,
            ),
            Container(
              height: height*0.3,
              width: width*1,
              child: Lottie.asset("Assets/56120-medical-shield.json"),
            ),
            Padding(
              padding:EdgeInsets.only(top: height*0.3),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BMI CALCULATOR",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                  Padding(
                    padding:EdgeInsets.only(left: width*0.05),
                    child: SizedBox(
                      width:200,
                      child: TextField(
                        controller:wtcontroller ,
                        keyboardType: TextInputType.number,
                        decoration:InputDecoration(
                          hintText: "weight in (kg)",
                          prefixIcon: Icon(Icons.line_weight),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: width*0.05),
                    child: SizedBox(
                      width:200,
                      child: TextField(
                        controller:htcontroller ,
                        keyboardType: TextInputType.number,
                        decoration:InputDecoration(
                          hintText: "height in (mtr.)",
                          prefixIcon: Icon(Icons.height),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left: width*0.18),
                        child: Container(
                          width: width*0.3,
                          height: height*0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.orange,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15,
                                  offset: Offset(5,5),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15,
                                  offset: Offset(-5,-5),
                                ),
                              ]
                          ),
                          child: TextButton(child: Text("Calculate",style: TextStyle(color: Colors.white),),
                            onPressed: (){
                              cal=getValue(wtcontroller)~/(getValue(htcontroller)*getValue(htcontroller));
                              print(cal);
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: width*0.3,
                        height: height*0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300,
                        ),
                        child: Center(child: Text("$cal",style: TextStyle(color: Colors.black,fontSize: 20),)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: height*0.05,left: width*0.05),
              child: Container(
                width: width*0.1,
                height: height*0.05,
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                  icon: Icon(Icons.arrow_back,color: Colors.white,),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 11,
                        offset: Offset(5,5),
                        color: Colors.grey,
                      ),
                      BoxShadow(
                        blurRadius: 11,
                        offset: Offset(-5,-5),
                        color: Colors.white,
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  int getValue(TextEditingController controller) {
    return int.parse(controller.text.toString());
  }
}
