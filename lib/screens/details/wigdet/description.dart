import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  String description;
   Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kprimaryColor,
              ),
              alignment: Alignment.center,
              child: const Text(
                'Description',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
             const Text(
                'Specification',
                style: TextStyle(
                  color: Colors.black,
              fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

            const Text(
                'Reviews',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),


          ],
        ),
        
        const SizedBox(height: 20,),
        Text(description, style: const TextStyle(fontSize: 16, color: Colors.grey),)

      ],
    );
  }
}
