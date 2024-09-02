import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<FavouriteProvider>(context, listen: true);
    final favList=provider.favourites;
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(

        backgroundColor: kcontentColor,
        title: const Text('Favourites', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index){
              return Stack(
                children: [
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                   padding: const EdgeInsets.all(10),
                   width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                   ),
                    child: Row(
                      children: [
                         Container(
                           padding: const EdgeInsets.all(10),
                           height: 85,
                           width: 85,
                           decoration: BoxDecoration(
                              color: kcontentColor,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Image.asset(favList[index].image),
                         ),
                         const SizedBox(width: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(favList[index].title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            const SizedBox(height: 5,),
                            Text(favList[index].category, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade400, fontSize: 16),),
                            const SizedBox(height: 10,),
                            Text("\$${favList[index].price}", style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),),
            
                          ],
                        )
            
                      ],
                    ),
                  ),
                ),
            
                   Positioned(
                    top : 50,
                      right : 35,
                      child: GestureDetector(
                        onTap : (){
                     favList.removeAt(index);
                     setState(() {
            
                     });
              },
                          child: const Icon(Icons.delete, color: Colors.red, size: 25,))),
            
                ]
              );
            }),
          )
        ],
      ),
    );
  }
}
