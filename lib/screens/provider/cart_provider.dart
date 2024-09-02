

import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartProvider extends ChangeNotifier{

 final List<Product> _cart=[];
  List<Product> get cart => _cart;

  void toggle(Product product){
   if(_cart.contains(product)){
    for(Product element in _cart){
     element.quantity++;
    }
   }else{
    _cart.add(product);

   }
notifyListeners();

  }

 incrementQtn(int index){
   _cart[index].quantity++;
   notifyListeners();
 }
 decrementQtn(int index){
   if(_cart[index].quantity !=1) {
    _cart[index].quantity--;
        notifyListeners();
   }
 }

 totalPrice(){
     double total1=0.0;
     for(Product element in _cart){
       total1 +=element.price*element.quantity;

     }

       return total1;
   }

 }

