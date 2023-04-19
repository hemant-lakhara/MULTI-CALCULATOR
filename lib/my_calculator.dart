import 'package:flutter/material.dart';

import 'my_bmi.dart';
import 'my_pressure.dart';
import 'my_temparature.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  var no1controller= TextEditingController();
  var no2controller=TextEditingController();
  var sum=0;
  var sub=0;
  var multiply=0;
  double divide=0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width*1,
                height: height*0.398,
                color: Colors.white,
                child: Image.asset("Assets/business-accounting.png"),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: height*0.07,
                        width: width*0.8,
                        child: TextField(
                          controller: no1controller,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            //labelText: "No.1",
                            hintText: "Enter No.1",
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding:EdgeInsets.only(top: height*0.02),
                      child: Center(
                        child: SizedBox(
                          height: height*0.07,
                          width: width*0.8,
                          child: TextField(
                            controller: no2controller,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                            //  labelText: "No.2",
                              hintText: "Enter No.2",
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding:EdgeInsets.only(top: height*0.02),
                      child: Column(
                        children: [
                          Row(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(left: width*0.08),
                                child: Container(
                                  width: width*0.4,
                                  height: height*0.05,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                    ),
                                    child: Text("SUM",style: TextStyle(color: Colors.white,fontSize:15),),
                                        onPressed: (){
                                          sum=getValue(no1controller)+ getValue(no2controller);
                                          print(sum);
                                          setState(() {});
                                        },
                                      ),
                                ),
                                ),

                              Padding(
                                padding: EdgeInsets.only(left: width*0.05),
                                child: Container(
                                  width: width*0.4,
                                  height: height*0.05,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade300
                                  ),
                                  child: Center(child: Text(" $sum",style: TextStyle(color: Colors.black,fontSize: 20),)),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: height*0.015),
                            child: Row(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(left: width*0.08),
                                  child: Container(
                                    width: width*0.4,
                                    height: height*0.05,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                      ),
                                      child: Text("SUBSTRACT",style: TextStyle(color: Colors.white,fontSize:15),),
                                          onPressed: (){
                                            sub=getValue(no1controller)-getValue(no2controller);
                                            print(sub);
                                            setState(() {});
                                          },
                                        ),
                                  ),
                                  ),
                                Padding(
                                  padding: EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.4,
                                    height: height*0.05,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Center(child: Text("$sub",style: TextStyle(color: Colors.black,fontSize: 20),)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height*0.015),
                            child: Row(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(left: width*0.08),
                                  child: Container(
                                    width: width*0.4,
                                    height: height*0.05,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                      ),
                                      child: Text("MULTIPLY",style: TextStyle(color: Colors.white,fontSize:15),),
                                          onPressed: (){
                                            multiply=getValue(no1controller)*getValue(no2controller);
                                            print(multiply);
                                            setState(() {});
                                          },
                                        ),
                                  ),
                                  ),
                                Padding(
                                  padding: EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.4,
                                    height: height*0.05,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Center(child: Text("$multiply",style: TextStyle(color: Colors.black,fontSize: 20),)),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: height*0.015),
                            child: Row(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(left: width*0.08),
                                  child:Container(
                                    width: width*0.4,
                                    height: height*0.05,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                      ),
                                      child: Text("DVISION",style: TextStyle(color: Colors.white,fontSize:15),),
                                          onPressed: (){
                                            divide=getValue(no1controller)/getValue(no2controller);
                                            print(divide);
                                            setState(() {});
                                          },
                                        ),
                                  ),
                                  ),



                                Padding(
                                  padding: EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.4,
                                    height: height*0.05,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Center(child: Text("$divide",style: TextStyle(color: Colors.black,fontSize: 20),)),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: height*0.025),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width*0.1),
                                  child:Container(
                                    width: width*0.35,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.pinkAccent,
                                      ),
                                      child: Text("Temparature",style: TextStyle(color: Colors.white,fontSize: 15),),
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Temparature()));
                                          },
                                        ),
                                  ),
                                  ),
                                Padding(
                                  padding: EdgeInsets.only(left: width*0.07),
                                  child: Container(
                                    width: width*0.35,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.pinkAccent,
                                      ),
                                      child: Text("BMI",style: TextStyle(color: Colors.white,fontSize: 15),),
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiCal()));
                                          },
                                        ),
                                  ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  int getValue(TextEditingController controller){
    return int.parse(controller.text.toString());
  }
}
