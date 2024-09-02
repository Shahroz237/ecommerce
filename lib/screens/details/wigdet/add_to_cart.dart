import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/models/product_model.dart';
import 'package:ecommerce/screens/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatefulWidget {
  final Product product1;
  const AddToCart({super.key, required this.product1});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 6),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.black,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if(currentIndex !=1){
                            setState(() {
                              currentIndex--;
                            });
                          }
                        },
                        iconSize: 18,
                        color: Colors.white,
                        icon: const Icon(Icons.remove)),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      currentIndex.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex++;
                          });
                        },
                        iconSize: 18,
                        color: Colors.white,
                        icon: const Icon(Icons.add)),
                  ],
                ),
              ),
            ),
            Consumer(
              builder: (context, value, child) {
                return GestureDetector(
                  onTap: () {
                    cartProvider.toggle(widget.product1);
                  const   snackBar =  SnackBar(
                      content: Text(
                        'Added Successfully',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                       duration: Duration(seconds: 1),
                    );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
