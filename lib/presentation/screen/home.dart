import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/services/all_products_services.dart';

import '../../data/models/product_model.dart';
import '../widgets/custom_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Store App",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartArrowDown,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: FutureBuilder<List<ProductModel>>(
            future: AllProductsServices().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  clipBehavior: Clip.none,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CustomCard(product: products[index]);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: .1,
                      mainAxisSpacing: 65),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
