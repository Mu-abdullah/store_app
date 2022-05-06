import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 30,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(0.1),
              offset: Offset(20, 20),
            ),
          ]),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * .04,
                    ),
                    Text(
                      product.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 21, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${product.price.toString()}",
                          style: TextStyle(fontSize: 18, color: Colors.black45),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.red,
                            ))
                      ],
                    )
                  ]),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: -35,
          child: Image.network(
            product.image,
            height: height * .15,
            width: width * .3,
          ),
        )
      ],
    );
  }
}
