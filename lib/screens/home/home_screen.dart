import 'package:ecommerce/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/screens/home/widgets/image_slider.dart';
import 'package:ecommerce/screens/home/widgets/productcart.dart';
import 'package:ecommerce/screens/home/widgets/searchbar.dart';
import 'package:ecommerce/screens/models/category.dart';

import 'package:flutter/material.dart';

import '../models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectCategories = [
      all,
      shoes,
      beauty,
      womenFashion,
      jewelry,
      menFashion
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const CustomAppbar(),
              const SizedBox(
                height: 20,
              ),
              const MySearchbar(),
              const SizedBox(
                height: 20,
              ),
              const imageSlider(),
              const SizedBox(
                height: 20,
              ),
               categoryItems(),
              const SizedBox(height: 20,),
            if(selectIndex==0)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
              GridView.builder(
                itemCount: selectCategories[selectIndex].length,
                shrinkWrap: true,

                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.78,
                    crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13,

                ),

                itemBuilder: (context, index) {
                  return ProductCard(product1: selectCategories[selectIndex][index]);
                },
              ),


            ],
          ),
        ),
      ),
    );

  }

SizedBox categoryItems() {
  return SizedBox(
    height: 130,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Categories.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: selectIndex == index
                  ? Colors.blue[200]
                  : Colors.transparent,
            ),
            child: Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Categories[index].image),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  Categories[index].title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}

}
