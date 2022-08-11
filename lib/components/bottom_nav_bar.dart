import 'package:flutter/material.dart';

Widget buildNav(String page) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        color: Color(0XFFEFF5FB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavIcon(icons: Icons.home_rounded, active: page == "home"),
            buildNavIcon(icons: Icons.search, active: page == 'search'),
            buildNavIcon(icons: Icons.shopping_bag, active: page == "cart"),
            buildNavIcon(icons: Icons.person, active: page == "profile")
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
