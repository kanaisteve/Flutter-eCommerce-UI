import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_kit/constants.dart';
import 'package:flutter_ui_kit/models/Product.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_counter.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'product_card.dart';
import 'section_title.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
