import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/theme.dart';
import 'package:flutter_ui_kit/constants.dart';
import 'package:flutter_ui_kit/routes.dart';
import 'package:flutter_ui_kit/screens/splash/splash_screen.dart';

import './screens/home.screen.dart'; // route with Drawer Demo [K-Store]

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
