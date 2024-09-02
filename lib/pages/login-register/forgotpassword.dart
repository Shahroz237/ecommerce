
import 'package:ecommerce/pages/login-register/login.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({super.key});

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  final email3Controller=TextEditingController();
  final authenticate=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

        leading: InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: const Color(0xff037EEE),
      ),
      body: Column(
        children: [



            Padding(
              padding: const EdgeInsets.only(top: 159, left: 10, right: 10),
              child: TextFormField(
                 controller: email3Controller,
              
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                )
                ),
              
              ),
            ),

       const SizedBox(height: 10),

          InkWell(
            onTap: (){
              authenticate.sendPasswordResetEmail(email: email3Controller.text.toString()).then((value){
                Utils().toastMessage('We have send you email to recover password,check email');
              }).onError((error, stackTrace){
                Utils().toastMessage(error.toString());
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*.9,
              decoration:  BoxDecoration(
                color: const Color(0xff037EEE),
                    borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text('Forgot', style: TextStyle(color: Colors.white,fontSize: 17 ),)),
            ),
          )

        ],
      ),
    );
  }
}
