import 'package:ecommerce/pages/bottomnav/bottomnav.dart';
import 'package:ecommerce/pages/login-register/login_with_phone_number.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class verifyCodeScreen extends StatefulWidget {
  String verificationId;
   verifyCodeScreen({super.key, required this.verificationId});

  @override
  State<verifyCodeScreen> createState() => _verifyCodeScreenState();
}

class _verifyCodeScreenState extends State<verifyCodeScreen> {
  final auth2=FirebaseAuth.instance;
  final verifyController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginWithPhoneNumber()));
            },
            child: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text('Verify Code', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff037EEE),
      ),
      body: Column(
        children: [
            const SizedBox(height: 50,),
          TextFormField(
            controller: verifyController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: '6 digit code',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),

          const SizedBox(height: 10,),
          InkWell(
            onTap: () async{
              final credential=PhoneAuthProvider.credential(
                  verificationId: widget.verificationId,

                  smsCode: verifyController.text.toString());

              try{
                await auth2.signInWithCredential(credential);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const bottomNav()));
              }catch(e){
                Utils().toastMessage(e.toString());
              }
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
                color: const Color(0xff037EEE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text('Verify', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            ),
          )

        ],
      ),
    );
  }
}
