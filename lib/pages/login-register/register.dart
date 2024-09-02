import 'package:ecommerce/pages/login-register/login.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final auth=FirebaseAuth.instance;
  bool isPassVisible=true;
  bool loading=false;
       final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final nameController=TextEditingController();
  final email2Controller=TextEditingController();
  final password2Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xfff8f8ff),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/bk3.png',
                fit: BoxFit.cover,
                height: 210,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logo.png',
                      height: 40,
                      width: 40,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 108.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'eCommerce Shop',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,

                        fontSize: 27,
                      ),
                    )),
              ),
            ]),

            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ),

            const SizedBox(height: 35,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email),
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color(0xff037EEE),
                            )
                        ),

                      ),
                  validator: (value){
                        if(value!.isEmpty){
                          return 'Please Enter Name';
                        }
                        return null;
                  },
                    ),
                  ),


            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: email2Controller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Color(0xff037EEE),
                      )
                  ),

                ),
             validator: (value){
                  if(value!.isEmpty){
                    return 'Please Enter Email';
                  }return null;
             },
              ),
            ),

            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: isPassVisible,
                controller: password2Controller,
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      isPassVisible= !isPassVisible;
                    });
                  },
                      icon: isPassVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Color(0xff037EEE),
                      )
                  ),

                ),
                validator:  (value){
                  if(value!.isEmpty){
                    return 'Please Enter Password';
                  }return null;
                },
              ),
            ),

                ],
              ),
            ),

            const SizedBox(height: 15,),
            GestureDetector(

              onTap: (){

                if(_formKey.currentState!.validate()){
                setState(() {
                  loading=true;
                });
                  auth.createUserWithEmailAndPassword(email: email2Controller.text.toString(),
                      password: password2Controller.text.toString()).then((value){
          setState(() {
            loading=false;
          });
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
                  }).onError((error, stackTrace){
                    Utils().toastMessage(error.toString());
                  setState(() {
                    loading=false;
                  });
                  });
                }

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: loading? const CircularProgressIndicator():  Container(
                  height: 50,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: const Color(0xff037EEE),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'SIGN UP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()));
              }, child: const Text("Already have an account?Sign In", style: TextStyle(color: Colors.green),)),
            ),


        ]
        ),
      ),
    );

  }
}
