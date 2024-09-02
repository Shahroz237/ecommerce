import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/details/detail_screen.dart';
import 'package:ecommerce/screens/models/product_model.dart';
import 'package:ecommerce/screens/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Product product1;
  const ProductCard({super.key, required this.product1});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<FavouriteProvider>(context, listen: true);
    return GestureDetector(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>   DetailScreen(product1: product1,)));
      },
      child: Stack(
        children:[
          Container(
        width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,
            ),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 17,),
                  Center(child: Hero(
                      tag: product1.image,
                      child: Image.asset(product1.image, fit: BoxFit.cover,height: 120, width: 120,))),
                  const SizedBox(height: 7),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(product1.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),

                  const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("\$${product1.price}", style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    ),

                  Row(
                    children: List.generate(product1.colors.length, (index){
                      return Container(
                        height: 14,
                        width: 14,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: product1.colors[index],
                        ),
                      );
                    }),
                  )
                  ],
                )
                
                
                ],
              )

          ),

          Positioned(child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: GestureDetector(
                  onTap: (){
                    provider.toggleFav(product1);
                  },
                  child: Icon(
                    provider.isExists(product1) ?
                    Icons.favorite :
                    Icons.favorite_border,
                    color: Colors.white, size: 22,)
              ),
            ),
          ))
          
      ]
      ),
    );
  }
}
