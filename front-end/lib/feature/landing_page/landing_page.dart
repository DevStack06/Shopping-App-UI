import 'package:flutter/material.dart';
import 'package:myntra/feature/categories/categories.dart';
import 'package:myntra/feature/home_page/home_page.dart';
import 'package:myntra/feature/profile/profile.dart';
import 'package:myntra/foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), Categories(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "logo-black.png",
              index: 0,
              currentIndex: currentIndex,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "categories.png",
              index: 1,
              currentIndex: currentIndex,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
              index: 2,
              currentIndex: currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
