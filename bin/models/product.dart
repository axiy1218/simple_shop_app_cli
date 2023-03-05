class Product {
  final num? id;
  final String? title;
  final String? description;
  final num? price;
  final num? discountPercentage;
  final num? rating;
  final num? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String?>? images;

  const Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required this.thumbnail,
      required this.images,
      required this.brand,
      required this.category,
      required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        discountPercentage: json['discountPercentage'],
        rating: json['rating'],
        stock: json['stock'],
        thumbnail: json['thumbnail'],
        images: List<String>.from(json['images'].map((e) => e.toString())),
        brand: json['brand'],
        category: json['category'],
        description: json['description']);
  }

  @override
  String toString() {
    return '''
----------------Product----------------
name-------$title;

description-------------$description

price----------------$price

category----------$category

----------------End---------------------
''';
  }
}
