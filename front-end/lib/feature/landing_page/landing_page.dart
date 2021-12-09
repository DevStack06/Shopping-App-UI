import 'package:flutter/material.dart';
import 'package:myntra/foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 13),
        selectedItemColor: const Color(0xfffe416c),
        currentIndex: _currentIndex,
        onTap: (index) => {
          setState(() {
            _currentIndex = index;
          })
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetName: "logo-black.png",
              index: 0,
              currentIndex: _currentIndex,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetName: "categories.png",
              index: 1,
              currentIndex: _currentIndex,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetName: "profile.png",
              index: 2,
              currentIndex: _currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
