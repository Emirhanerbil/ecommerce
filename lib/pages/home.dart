import 'package:ecommerce/Buttons.dart';
import 'package:ecommerce/banner.dart';
import 'package:ecommerce/pages/categories.dart';
import 'package:ecommerce/sales_item.dart';
import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:ecommerce/utilities/text_utilities.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: PagePadding().pagePadding,
              child: ListView(
                children: [
                  //Headline

                  HeadlineText(title: 'Home', fontsize: 30),

                  //Banner

                  banner(),

                  //Navigation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Navigation(
                          text: 'Categories',
                          icon: Icons.menu_rounded,
                          widget: CategoriesPage(),
                          context: context),
                      Navigation(
                          text: 'Favorites',
                          icon: Icons.favorite_border,
                          widget: CategoriesPage(),
                          context: context),
                      Navigation(
                          text: 'Highly Rated',
                          icon: Icons.star_border,
                          widget: CategoriesPage(),
                          context: context),
                    ],
                  ),

                  //Sales title
                  const SizedBox(height: 40),
                  Center(child: HeadlineText(title: 'Sales', fontsize: 30)),
                  const SizedBox(height: 16),

                  //Sales

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          screenWidth: screenWidth,
                          text: 'Phones',
                          photodir: 'assets/images/iphone13.png',
                          discount: '-50%'),
                      buildSalesItem(
                          screenWidth: screenWidth,
                          text: 'Speakers',
                          photodir: 'assets/images/speaker.png',
                          discount: '-50%'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          screenWidth: screenWidth,
                          text: 'Tablets',
                          photodir: 'assets/images/ipad.png',
                          discount: '-50%'),
                      buildSalesItem(
                          screenWidth: screenWidth,
                          text: 'Shoes',
                          photodir: 'assets/images/airforce.png',
                          discount: '-50%'),
                    ],
                  )

                  //Details
                ],
              ),
            ),
            buildNav()
          ],
        ),
      ),
    );
  }
}
