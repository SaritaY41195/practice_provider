import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_provider/model/products_model.dart';

class ProviderService {
  static Future<List<ProductModel>> getProducts() async {
    var url = Uri.https('https://dummyjson.com/products/category/smartphones');
    var response = await http.get(url);
    if(response.statusCode==200){
        final json = jsonDecode(response.body) as List;
        final product = json.map((e) => ProductModel(
            products: e['products'].toList(),
        )).toList();
        return product;
    }
    return [];
   }
}
