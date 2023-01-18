import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/screens/auth/components/register_body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: const RegisterBody(),
    );
  }
}
