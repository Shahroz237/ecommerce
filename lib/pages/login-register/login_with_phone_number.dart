import 'dart:ui';

import 'package:ecommerce/pages/login-register/login.dart';
import 'package:ecommerce/pages/login-register/verifycodescreen.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  final auth1=FirebaseAuth.instance;
    final phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Phone Number', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
     backgroundColor: const Color(0xff037EEE),
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: Column(
        children: [
               const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration:  InputDecoration(
                  hintText: '+92 345 12464367',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  )
                ),
              ),
            ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){

              auth1.verifyPhoneNumber(
                  phoneNumber: phoneController.text,
                  verificationCompleted: (_){

              },
                  verificationFailed: (e){
                    Utils().toastMessage(e.toString());
                  },
                  codeSent: (String verificationId, int? token){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> verifyCodeScreen(verificationId:verificationId )));
                  },
                  codeAutoRetrievalTimeout: (e){
                    Utils().toastMessage(e.toString());
                  });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
                color: const Color(0xff037EEE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            ),
          )

        ],
      ),
    );
  }
}
