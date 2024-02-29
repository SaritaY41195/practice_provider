import 'package:flutter/material.dart';
import 'package:practice_provider/provider/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:practice_provider/model/products_model.dart';
import 'package:practice_provider/screens/home_screen.dart';

void main() {
  runApp(
  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
     child: const MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
