import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/screens/details/details_screen.dart';

import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Products",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(
                    product: demoProducts[index],

                    // When a user presses the ProductCard, navigate to the DetailScreen
                    /// Notice that you're not only creating a DetailScreen, you're also
                    /// passing the current product through to it.
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: demoProducts[index]),
                      ),
                    ),
                    // press: () => Navigator.pushNamed(
                    //   context,
                    //   DetailsScreen.routeName,
                    //   arguments: ProductDetailsArguments(
                    //     product: demoProducts[index],
                    //   ),
                    // ),
                  );
                }

                return Container(); // here by default width and heigh is 0
              }),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
