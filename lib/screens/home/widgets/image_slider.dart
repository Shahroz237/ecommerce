import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageSlider extends StatelessWidget {
  const imageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              children: [
                Image.asset(
                  'assets/slider.jpg',
                  fit: BoxFit.fill,
                ),

                Image.asset(
                  'assets/image1.png',
                  fit: BoxFit.fill,
                ),

                Image.asset(
                  'assets/slider3.jpg',
                  fit: BoxFit.fill,
                ),

                Image.asset(
                  'assets/slider4.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/slider5.png',
                  fit: BoxFit.fill,
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
