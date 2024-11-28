import 'package:flutter/material.dart';
import 'package:Task/product_model.dart';
import 'package:Task/product_service.dart';


class ProductController with ChangeNotifier {
  final ProductService service = ProductService();
  List<Product> products = [];
  bool isLoading = true;
  String? error;

  ProductController() {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      final data = await service.fetchProducts();
      products = data.map((item) => Product.fromJson(item)).toList();
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
