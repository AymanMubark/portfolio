import 'package:flutter/material.dart';

class SkilIcon extends StatelessWidget {
  final String icon;
  const SkilIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.circular(20),
      // ),
      // padding: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/$icon.png", height: 30, width: 30),
      ),
    );
  }
}
