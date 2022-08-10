import 'package:flutter/material.dart';

Widget buildNav() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        color: Color(0XFFEFF5FB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavIcon(icons: Icons.home_rounded, active: true),
            buildNavIcon(icons: Icons.search, active: false),
            buildNavIcon(icons: Icons.shopping_bag, active: false),
            buildNavIcon(icons: Icons.person, active: false)
          ],
        )),
  );
}

Widget buildNavIcon({required IconData icons, required bool active}) {
  return Icon(
    icons,
    size: 25,
    color: Color(active ? 0XFF0001FC : 0XFF0D0E15),
  );
}
