import 'package:ecommerce/pages/bottomnav/bottomnav.dart';
import 'package:ecommerce/screens/cart/check_out.dart';
import 'package:ecommerce/screens/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: true);
    final finalList = provider.cart;
    ProductQty(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQtn(index)
                : provider.decrementQtn(index);
          });
        },
        child: Icon(
          icon,
          size: 20,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kcontentColor,
      bottomSheet: const CheckOut(),
      body: SafeArea(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const bottomNav()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const Text(
                      "My Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox()
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: finalList.length,
                  itemBuilder: (context, index) {
                    final cartItems = finalList[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kcontentColor,
                                  ),
                                  // padding: const EdgeInsets.all(20),
                                  child: Image.asset(cartItems.image),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cartItems.title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      cartItems.category,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.grey.shade400),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "\$${cartItems.price}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          right: 35,
                          child: Column(
                            children: [
                              // for remove items
                              IconButton(
                                onPressed: () {
                                  finalList.removeAt(index);
                                  setState(() {

                                  });
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                              // for items quantity
                              const SizedBox(height: 10),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kcontentColor,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    ProductQty(Icons.add, index),
                                    const SizedBox(width: 10),
                                    Text(
                                      cartItems.quantity.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    ProductQty(Icons.remove, index),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

