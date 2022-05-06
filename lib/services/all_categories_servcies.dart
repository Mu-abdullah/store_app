import 'package:store_app/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    String baseUrl = "https://fakestoreapi.com/products/categories";

    List<dynamic> data = await Api().get(url: baseUrl);

    return data;
  }
}
