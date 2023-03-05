import 'package:get_it/get_it.dart';

import '../src/clent_service/product_client.dart';
import '../src/product_repository/product_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ProductNetworkProvider>(ProductNetworkProvider());

  getIt.registerSingleton<ProductRepository>(
      ProductRepository(getIt.get<ProductNetworkProvider>()));
}
