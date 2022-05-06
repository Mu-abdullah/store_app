


import 'package:store_app/data/models/product_model.dart';

import '../helper/api.dart';

class UpdateProducts{

Future<ProductModel> updateProducts({
    required String title,
    required String price,
    required String discreption,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "price": price,
        "discreption": discreption,
        "image": image,
        "category": category,
      },
    );
    return ProductModel.fromJson(data);
  }

}