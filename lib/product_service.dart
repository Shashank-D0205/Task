import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductService {
  final String apiUrl = "https://api.escuelajs.co/api/v1/products";

  Future<List<dynamic>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
