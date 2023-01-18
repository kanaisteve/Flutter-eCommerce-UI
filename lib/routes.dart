import 'package:flutter/widgets.dart';
import 'package:flutter_ui_kit/screens/auth/register_screen.dart';
import 'package:flutter_ui_kit/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_ui_kit/screens/login_success/login_success_screen.dart';
import 'package:flutter_ui_kit/screens/otp/otp_screen.dart';
import 'package:flutter_ui_kit/screens/splash/splash_screen.dart';
import 'package:flutter_ui_kit/screens/auth/login_screen.dart';
import 'package:flutter_ui_kit/screens/forgot_password/forgot_password_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
