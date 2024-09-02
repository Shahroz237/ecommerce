import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class MySearchbar extends StatelessWidget {
  const MySearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.grey, size: 30,),

            const SizedBox(width: 10,),
            const Flexible(
              flex: 4,

              child: TextField(
                      decoration: InputDecoration(
              hintText: 'Search...',
                        border: InputBorder.none
                      ),
              ),
            ),


            Container(
              height: 25,
              width: 1.5,
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
