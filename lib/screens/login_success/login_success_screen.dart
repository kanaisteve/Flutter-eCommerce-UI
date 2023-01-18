import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Success",
          style: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
