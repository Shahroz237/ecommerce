import 'package:flutter/material.dart';

import '../models/product_model.dart';

class FavouriteProvider extends ChangeNotifier{

  final List<Product> _favourites=[];

  List<Product> get favourites => _favourites;

  void toggleFav(Product product1){
    if(_favourites.contains(product1)){
      _favourites.remove(product1);
    }else{
      _favourites.add(product1);
    }

    notifyListeners();
  }

 bool isExists(Product product1){
 final isExists=   _favourites.contains(product1);
    return isExists;
 }
}