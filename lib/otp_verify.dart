import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import 'my_calculator.dart';

class OtpVa extends StatefulWidget {
  final String verificationId;
  const OtpVa({Key? key, required this.verificationId }) : super(key: key);

  @override
  State<OtpVa> createState() => _OtpVaState();
}

class _OtpVaState extends State<OtpVa> {
  @override
  final phoneController=TextEditingController();
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding:EdgeInsets.only(top: height*0.1),
            child: Container(
                width: width,
                height: height*0.3,
                child: Lottie.asset("Assets/107385-login.json")
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.04),
            child: Text("OTP Verification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.02),
            child: SizedBox(
              width: width*0.85,
              height: height*0.055,
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter Otp",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.03),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange
              ),
              onPressed: () async{
              final credential= PhoneAuthProvider.credential(
                  verificationId: widget.verificationId,
                  smsCode: phoneController.text.toString(),
              );
              try{
                await auth.signInWithCredential(credential);
                Get.to(Calculation());
              }
              catch(e){
                Text("Not Proceed");
              }
            },
              child: Text("Otp verify"),
            ),
          ),
        ],
      ),
    );
  }
}
