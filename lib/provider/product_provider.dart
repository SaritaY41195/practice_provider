import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../model/products_model.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier{
  bool isLoading = true;

  static const apiEnd = 'https://dummyjson.com/products/category/smartphones';
  ProductModel productModel = ProductModel(products: []);

  getDataFromApi()async{
   try{
     var url = Uri.parse(apiEnd);
     Response response = await http.get(url);
     if(response.statusCode==200){
       productModel = productModelFromJson(response.body);
     }
   }catch(e){
     return e;
   }
   isLoading = false;
   notifyListeners();
  }


  // void updateProductModel(List<ProductModel> dataList){
  //   this.dataList = dataList;
  //   notifyListeners();
  // }


}