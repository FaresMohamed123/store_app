// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/screen/details_screen.dart';
import 'package:store_app/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                ),
                ListView.builder(
                  itemBuilder: (context, index) => ProductCard(
                    index: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScren(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                  itemCount: products.length,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
