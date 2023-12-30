import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/controller/product_controller.dart';

class MenProductsHomePage extends StatefulWidget {
  const MenProductsHomePage({super.key});

  @override
  State<MenProductsHomePage> createState() => _MenProductsHomePageState();
}

class _MenProductsHomePageState extends State<MenProductsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text("Hello"));
  }
}
