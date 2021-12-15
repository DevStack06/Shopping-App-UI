import 'package:flutter/material.dart';

class SPIcon extends StatelessWidget {
  const SPIcon(
      {Key? key,
      required this.assetname,
      required this.index,
      required this.currentIndex})
      : super(key: key);
  final String assetname;
  final int index;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$assetname",
      height: 25,
      width: 25,
      color: index == currentIndex ? const Color(0xfffe416c) : Colors.black,
    );
  }
}
