import 'package:flutter/material.dart';

import 'data.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final int cardNum;
  ProductCard({this.cardNum, this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 250.0,
          height: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(10.0, 10.0)),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            product.title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("\$${product.price}",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
        ),
      ],
    );
  }
}
