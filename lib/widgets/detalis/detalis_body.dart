import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/detalis/brodactimage.dart';
import 'package:store_app/widgets/detalis/colordot.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Brodactimage(
                    size: size,
                    image: product.image,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ColorDot(
                        fillColor: kTextLightColor,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor: Colors.blue,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor: Colors.red,
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Text(
                    'السعر : \$${product.price}',
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: kSecondaryColor),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            product.description,
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
        )
      ],
    );
  }
}
