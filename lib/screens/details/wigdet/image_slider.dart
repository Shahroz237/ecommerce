import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
     final Function(int) onchange;
    final String image;
   MyImageSlider({super.key, required this.image, required this.onchange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,

      child: PageView.builder(

          onPageChanged: onchange,

          itemBuilder: (context, index){
     return Hero(
         tag: image,
         child: Image.asset(image));
      }),
    );
  }
}
