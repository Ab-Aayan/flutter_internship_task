import 'package:dio/dio.dart';
import 'package:onlinestore/Screens/models/product_api_models.dart';

class ApiHelper {
  final dio = Dio();

  Future<List<ProductResModel>> getProduct() async {
    try {
      final response = await dio.get('https://fakestoreapi.com/products');
      return (response.data as List)
          .map((e) => ProductResModel.fromJson(e))
          .toList();
    } catch (e) {
      throw e;
    }
  }
}
