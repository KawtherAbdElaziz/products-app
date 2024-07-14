class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final double discountPercentage;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    required this.discountPercentage,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      thumbnail: json['thumbnail'],
      discountPercentage: json['discountPercentage'].toDouble(),
      rating: json['rating'].toDouble(),
    );
  }
}
