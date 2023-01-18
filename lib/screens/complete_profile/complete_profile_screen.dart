import 'package:flutter/material.dart';

import '../../components/custom_surfix_icon.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'components/profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({super.key});

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
      body: const CompleteProfileBody(),
    );
  }
}
