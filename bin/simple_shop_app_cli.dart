import 'dart:io';

import 'di/locator.dart';
import 'models/product.dart';
import 'src/product_repository/product_repository.dart';

void main(List<String> arguments) async {
  setup();

  final ProductRepository repository = getIt.get<ProductRepository>();

  print('yuklanmoqda...');
  stdout.write('maxsulot id sini kiriting::::');
  num? id = num.tryParse(stdin.readLineSync()!)!;
  Product? product = await repository.getSingleProductUsingId(id);
  print(product);

  product = await repository.getSingleProductUsingId(3);
  print(product);
}
