import 'dart:collection';

import 'package:coffee_shop/pages/homePage/homePage.dart';
import 'package:coffee_shop/splash%20screen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF312C51)),
      home: const MyHomePage(),
    );
  }
}
