import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:lottie/lottie.dart';

import 'otp_verify.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 // bool loading=false;
  final phoneController=TextEditingController();
  final auth=FirebaseAuth.instance;
  String phone = "";
  @override
  void initState() {
    // TODO: implement initState
    phoneController.text = "+91";
    super.initState();
  }
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
                child: Lottie.asset("Assets/38435-register.json")
            ),
          ),
          Text("Login with Mobile Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          Padding(
            padding:EdgeInsets.only(top: height*0.03),
            child: SizedBox(
              width: width*0.85,
              height: height*0.055,
              child: TextFormField(
               keyboardType: TextInputType.number,
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter Mobile Number",
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
              onPressed: (){
              setState(() {

              });
              auth.verifyPhoneNumber(
                  phoneNumber:'${phoneController.text+phone}',
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (String verificationId, int? token){
                    Get.to(OtpVa(verificationId:verificationId ,));
                  },
                codeAutoRetrievalTimeout: (String verificationId) {},
              );
            },
                child: Text("Send otp"),
            ),
          ),
        ],
      ),
    );
  }
}
