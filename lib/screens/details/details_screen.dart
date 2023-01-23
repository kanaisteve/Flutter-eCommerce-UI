// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../../models/Product.dart';
import 'components/custom_app_bar.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // final ProductDetailsArguments arguments = ModalRoute.of(context)?.settings.arguments;
    // final productId =
    //     ModalRoute.of(context)?.settings.arguments as String; // id of product

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(4.5),
      body: Body(
        product: product,
      ),
    );
  }
}

// we also need to pass our product to our details screen
// we use named route so we need to create a arguments

// class ProductDetailsArguments extends StatelessWidget {
//   const ProductDetailsArguments({super.key, required this.product});

//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
