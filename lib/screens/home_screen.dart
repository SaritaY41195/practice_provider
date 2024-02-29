import 'package:flutter/material.dart';
import 'package:practice_provider/model/products_model.dart';
import 'package:practice_provider/provider/product_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('All Products'),
            backgroundColor: Colors.green.shade200,
          ),
          body: ListView.builder(
              itemCount: productProvider.productModel.products.length,
              itemBuilder: (context, index) {
              var item = productProvider.productModel.products[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text('${item.id}'),
                tileColor: Colors.green.shade50,
                title: Text(item.title),
                subtitle: Text(item.description),
              ),
            );
          }));
    });
  }
}
