import 'package:store_app/data/models/product_model.dart';
import '../helper/api.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    var baseUrl = "https://fakestoreapi.com/products";

    List<dynamic> data = await Api().get(url: baseUrl);

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    
    return productList;
  }
}
