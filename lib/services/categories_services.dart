import 'dart:convert';

import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/helper/api.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    String baseUrl = "https://fakestoreapi.com/products/category/$categoryName";

    List<ProductModel> data = await Api().get(url: baseUrl);

    List<ProductModel> categoriesProductsList = [];

    for (int i = 0; i < data.length; i++) {
      categoriesProductsList.add(data[i]);
    }

    return categoriesProductsList;
  }
}
