class Product {
  bool isFavorite;
  final String? id;
  final String? title;
  final String? price;
  final String? imageUrl;
  final String? description;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isFavorite = false,
  });
}
