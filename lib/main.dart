import 'package:flutter/material.dart';
import 'package:shree_datta_devsthan_saap/screens/home_screen.dart';

void main() {
  runApp(ShreeDattaDevsthanSaap());
}
class ShreeDattaDevsthanSaap extends StatelessWidget {
  const ShreeDattaDevsthanSaap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.deepOrange
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}