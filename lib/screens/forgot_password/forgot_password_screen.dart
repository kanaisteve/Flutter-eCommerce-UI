import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
