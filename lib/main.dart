import 'package:flutter/material.dart';
import 'package:shop_application_1/pages/checkout.dart';
import 'package:shop_application_1/pages/details_screen.dart';
import 'package:shop_application_1/pages/home.dart';
import 'package:shop_application_1/pages/login.dart';
import 'package:shop_application_1/pages/register.dart';
import 'package:shop_application_1/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
