import 'package:dio/dio.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product_model.dart';

class WebService {
  var dio = new Dio();

  Future<List<ProductModel>> fetchProductList() async {
    String url = Constants.PRODUCT_LIST;

    final response = await dio.get(url,
      options: Options(
        headers: {
          'Authorization': Constants.TOKEN,
        },
      ),
    );

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['data'];
      return list.map((article) => ProductModel.fromJson(article)).toList();
    } else {
      throw Exception("Failed to get data");
    }
  }
}
