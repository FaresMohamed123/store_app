import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/detalis/detalis_body.dart';

class DetailsScren extends StatelessWidget {
  const DetailsScren({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black)),
               title: const Text(
                'رجوع',
                   style: TextStyle(color: Colors.black),
        ),
      ),
      body:  DetailsBody(
        product: product,
      ),
    );
  }
}
