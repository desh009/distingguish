import 'package:distingguish/Home_screen.dart';
import 'package:distingguish/widgets/CartPAage.dart';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp()); //application
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Online Shopping",
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "cartPage": (context) => const CartPage(),
      },
    );
  }
}
