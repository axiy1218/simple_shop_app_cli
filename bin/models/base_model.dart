import 'product.dart';

class BaseModel {
  final List<Product?> products;
  final num? total;
  final num? skip;
  final num? limit;

  const BaseModel(
      {required this.products,
      required this.total,
      required this.skip,
      required this.limit});

  factory BaseModel.fromJson(Map<String, dynamic> json) {
    return BaseModel(
        products: List<Product>.from(
            json['products'].map((e) => Product.fromJson(e))),
        total: json['total'],
        skip: json['skip'],
        limit: json['limit']);
  }

  @override
  String toString() {
    return '''
$products
''';
  }
}
