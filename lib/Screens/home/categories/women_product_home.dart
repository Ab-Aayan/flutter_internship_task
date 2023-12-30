import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/controller/product_controller.dart';

class WomenProductHomePage extends StatefulWidget {
  const WomenProductHomePage({super.key});

  @override
  State<WomenProductHomePage> createState() => _WomenProductHomePageState();
}

class _WomenProductHomePageState extends State<WomenProductHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text("Women Products"));
  }
}
