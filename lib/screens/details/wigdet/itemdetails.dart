import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/models/product_model.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product1;
   const ItemDetails({super.key, required this.product1});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

    Text(product1.title, style: const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 25,
    ),),
       SizedBox(height: 10,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$${product1.price}", style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
                ),

                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor,
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child:  Row(
                        children: [

                          const Icon(Icons.star, color: Colors.white, size: 14,),
                          const SizedBox(width: 3,),
                          Text(product1.rate.toString(), style: const TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),),


                        ],
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text(product1.review, style: const TextStyle(fontSize: 15, color: Colors.grey),)
                  ],
                ),

              ],
            ),

            const Spacer(),
              Text.rich(
                TextSpan(
              children: [
                const TextSpan(text: "seller: ", style: TextStyle(fontSize: 16,)),
                TextSpan(text: product1.seller, style: const TextStyle(fontSize: 16)),
              ]
            ))
          ],
        ),

      ],
    );
  }
}
