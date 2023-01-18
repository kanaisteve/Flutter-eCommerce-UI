import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/screens/auth/components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: const LoginBody(),
    );
  }
}
