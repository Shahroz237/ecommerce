
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/details/wigdet/add_to_cart.dart';
import 'package:ecommerce/screens/details/wigdet/description.dart';
import 'package:ecommerce/screens/details/wigdet/detail_appbar.dart';
import 'package:ecommerce/screens/details/wigdet/image_slider.dart';
import 'package:ecommerce/screens/details/wigdet/itemdetails.dart';
import 'package:ecommerce/screens/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product1;

  const DetailScreen({super.key, required this.product1});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImageIndex = 0;
  int currentColorIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add to Cart
      floatingActionButton: AddToCart(product1: widget.product1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kcontentColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DetailAppbar(),
              MyImageSlider(
                  image: widget.product1.image,
                  onchange: (index) {
                    setState(() {
                      currentImageIndex = index;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                        (index) {
                  return AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImageIndex == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImageIndex == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20,),

              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ItemDetails(product1: widget.product1),

                    const Text('Colors', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),

                    Row(
                      children: List.generate(widget.product1.colors.length, (index){
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              currentColorIndex=index;
                            });
                          },
                          child: AnimatedContainer(
                            width: 40,
                            height: 40, duration: const Duration(milliseconds: 300),
                            decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColorIndex== index ? Colors.white : widget.product1.colors[index],
                              border: currentColorIndex==index ? Border.all(
                                color: widget.product1.colors[index],
                              ) : null,

                            ),
                            padding: currentColorIndex==index ? const EdgeInsets.all(2): null,
                          margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.product1.colors[index],
                              ),
                            ),

                          ),
                        );
                      })
                    ),

                    const SizedBox(height: 20,),
                    Description(description: widget.product1.description)

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
