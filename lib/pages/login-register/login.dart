import 'package:ecommerce/pages/bottomnav/bottomnav.dart';
import 'package:ecommerce/pages/login-register/forgotpassword.dart';
import 'package:ecommerce/pages/login-register/login_with_phone_number.dart';
import 'package:ecommerce/pages/login-register/register.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPassVisible=true;
  bool loading=false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: const Color(0xfff8f8ff),
          body: SingleChildScrollView(
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
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Color(0xff037EEE),
                                )),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          obscureText: isPassVisible,
                          keyboardType: TextInputType.text,
                          controller: passwordController,
                          decoration:  InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: 'Password',
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                isPassVisible = ! isPassVisible;
                              });
                            },
                                icon: isPassVisible ? const Icon(Icons.visibility ) : Icon(Icons.visibility_off),),
                            border: const OutlineInputBorder(

                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Color(0xff037EEE),
                                )),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Password';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                   Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ForgotpasswordScreen()));
                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ))),

                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      loading=true;
                    });
                    if (_formKey.currentState!.validate()) {

                      _auth
                          .signInWithEmailAndPassword(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString())
                          .then((value) {
                            Utils().toastMessage(value.user!.email.toString());
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const bottomNav()));
                            setState(() {
                              loading=false;
                            });
                      })
                          .onError((error, stackTrace) {
                        Utils().toastMessage(error.toString());
                        setState(() {
                          loading=false;
                        });
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child:loading? const CircularProgressIndicator():  Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff037EEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: const Text(
                        "Don't have an account?Sign up",
                        style: TextStyle(color: Colors.green),
                      )),
                ),
                const Text(
                  'OR',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginWithPhoneNumber()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: const Offset(1, 3),
                          )
                        ],
                        color: const Color(0xff037EEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'SIGN IN WITH PHONE NUMBER',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


    );
  }
}
