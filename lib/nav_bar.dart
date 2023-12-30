import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinestore/Screens/home/home_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: size.height * 0.07,
        //backgroundColor: Color.fromARGB(235, 125, 71, 218),
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(
              Icons.home,
              size: 24,
            ),
            title: Text(
              'Home',
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                  color: Color.fromARGB(172, 43, 42, 42),
                ),
              ),
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Bell.svg",
              height: 18,
            ),
            title: Text(
              "Cart",
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                  color: Color.fromARGB(172, 43, 42, 42),
                ),
              ),
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Cart Icon.svg",
              height: 18,
            ),
            title: Text(
              "Cart",
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                  color: Color.fromARGB(172, 43, 42, 42),
                ),
              ),
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: SvgPicture.asset(
              "assets/icons/User.svg",
              height: 18,
            ),
            title: Text(
              "Profile",
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                  color: Color.fromARGB(172, 43, 42, 42),
                ),
              ),
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
