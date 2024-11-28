class Product {
  final String title;
  final double price;
  final String image;

  Product({
    required this.title,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    String imageUrl = 'https://via.placeholder.com/150';
    if (json['images'] is List && json['images'].isNotEmpty) {
      imageUrl = json['images'][0];
    }

    return Product(
      title: json['title'],
      price: double.parse(json['price'].toString()),
      image: imageUrl,
    );
  }
}
