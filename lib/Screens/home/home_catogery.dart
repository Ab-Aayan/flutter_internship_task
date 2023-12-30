import 'package:flutter/material.dart';
import 'package:onlinestore/Screens/home/categories/all_product_home.dart';
import 'package:onlinestore/Screens/home/categories/women_product_home.dart';
import 'categories/men_product_home.dart';

class HomeCatogery extends StatefulWidget {
  const HomeCatogery({super.key});

  @override
  State<HomeCatogery> createState() => _HomeCatogeryState();
}

class _HomeCatogeryState extends State<HomeCatogery> {
  final List<String> tabTitles = ["Products", "Men's", "Women's"];
  int currentIndex = 0;

  Widget _getTabBody() {
    switch (currentIndex) {
      case 0:
        return const AllProductHomePage();
      case 1:
        return const MenProductsHomePage();
      case 2:
        return const WomenProductHomePage();
      default:
        return Container();
    }
  }

  Widget _buildTab(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.26,
        decoration: BoxDecoration(
          color: currentIndex == index
              ? const Color(0xFF16A34A)
              : const Color.fromARGB(172, 206, 202, 202),
          borderRadius: BorderRadius.circular(
            currentIndex == index ? 15 : 10,
          ),
        ),
        child: Center(
          child: Text(
            tabTitles[index],
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: currentIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          // TabBar
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.058,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: tabTitles.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => _buildTab(index),
            ),
          ),

          // Tab Bar Body
          Expanded(
            child: _getTabBody(),
          ),
        ],
      ),
    );
  }
}
