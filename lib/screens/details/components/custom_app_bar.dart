import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final double rating;

  CustomAppBar(this.rating);

  // AppBar().preferredSize.height provides us the height that apply on our app bar
  Size get PreferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
