import 'dart:io';

import 'di/locator.dart';
import 'models/base_model.dart';
import 'models/product.dart';
import 'src/product_repository/product_repository.dart';

void main(List<String> arguments) async {
  setup();

  final ProductRepository repository = getIt.get<ProductRepository>();
  stdout.write('id boyicha yoki hammasi [Y/N]:::');

  final String str = stdin.readLineSync()!;
  final bool isSingle = str.toLowerCase() == 'y';
  if (isSingle) {
    stdout.write('maxsulot id sini kiriting::::');
    num? id = num.tryParse(stdin.readLineSync()!)!;
    Product? product = await repository.getSingleProductUsingId(id);
    print(product);
  } else {
    BaseModel? baseModel = await repository.getAllProductsRepo();
    print(baseModel);
  }
}
