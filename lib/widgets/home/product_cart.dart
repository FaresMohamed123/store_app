// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.product,
    required this.index, 
     required this.press,
  }) : super(key: key);
  final Product product;
  int index;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 25,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 1,
              left: 2,
              child: Image.asset(
                product.image,
                height: 160,
              ),
            ),
            Positioned(
              bottom: 90,
              right: 30,
              child: Column(
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.subTitle,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)),
                child: Text('السعر ${product.price}\$'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
