import 'package:flutter/material.dart';
import 'package:onlinestore/Screens/home/home_catogery.dart';
import 'package:onlinestore/Screens/home/home_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 226, 226),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //home header page
              HomeHeader(),
              SizedBox(
                height: 10,
              ),
              //api catogery  home page
              SizedBox(
                height: 502,
                child: HomeCatogery(),
              ),
            ],
          ),
        ));
  }
}
