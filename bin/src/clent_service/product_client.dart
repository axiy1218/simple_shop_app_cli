import 'package:http/http.dart' as http;

class ProductNetworkProvider {
  Future<String?> getSinglePruduct(num id) async {
    try {
      var uri =
          Uri.tryParse(_AppUrls.baseUrl + _AppUrls.productApi + id.toString())!;

      var respose = await http.get(uri);

      if (respose.statusCode == 200) {
        return respose.body;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw Exception('malumotlar yuklanmadi');
    }
    return null;
  }
}

class _AppUrls {
  static const String baseUrl = 'https://dummyjson.com';
  static const String productApi = '/products/';
}
