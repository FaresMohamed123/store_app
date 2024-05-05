import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';

class Brodactimage extends StatelessWidget {
  const Brodactimage({super.key, 
   
    required this.size,
   required this.image,
  }) ;

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.8,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}
