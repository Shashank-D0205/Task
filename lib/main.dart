import 'package:flutter/material.dart';
import 'package:Task/UI/product_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Products',
    home: ProductScreen(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}
