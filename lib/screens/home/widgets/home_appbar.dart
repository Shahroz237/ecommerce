import 'package:ecommerce/constants.dart';
import 'package:ecommerce/pages/login-register/login.dart';
import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Builder(
          builder: (context)
    {
      return IconButton(onPressed: () {
        Scaffold.of(context).openDrawer(

        );
      },

          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(15),
          ),

          icon: Image.asset('assets/icon.png', height: 20,));
    }
    ),


        IconButton(onPressed: (){},
            iconSize: 30,
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15),
            ),
            icon: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                },
                child: const Icon(Icons.logout)))
      ],
    );
  }
}
