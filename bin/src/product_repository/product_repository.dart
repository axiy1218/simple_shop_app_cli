import 'dart:convert';

import '../../models/base_model.dart';
import '../../models/product.dart';
import '../clent_service/product_client.dart';

class ProductRepository {
  final ProductNetworkProvider? networkProvider;
  const ProductRepository(this.networkProvider);

  Future<Product?> getSingleProductUsingId(num? id) async {
    try {
      var data = await networkProvider!.getSinglePruduct(id!);

      if (data != null) {
        var decodedJson = jsonDecode(data);
        return Product.fromJson(decodedJson);
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw ArgumentError();
    }
    return Product.fromJson({});
  }

  Future<BaseModel?> getAllProductsRepo() async {
    try {
      var data = await networkProvider!.getAllProducts();

      if (data != null) {
        var decodedJson = jsonDecode(data);
        return BaseModel.fromJson(decodedJson);
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw ArgumentError();
    }
    return BaseModel.fromJson({});
  }
}
