import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/constants.dart';
import 'package:flutter_ui_kit/size_config.dart';

import 'otp_form.dart';

import '../../../components/default_button.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05), //5%
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +260 975 651 ***"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15), //15%
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1), //10%
              GestureDetector(
                onTap: () {
                  // resend your OTP
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
