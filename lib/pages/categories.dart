import 'package:ecommerce/components/header.dart';
import 'package:ecommerce/pages/category.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:ecommerce/utilities/text_utilities.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({Key? key}) : super(key: key);
  List<String> categories = [
    "All",
    "Computers",
    "Accessories",
    "Smartphones",
    "Speakers"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: PagePadding().pagePadding,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              header('Categories', context),
              const SizedBox(height: 16),
              Column(
                children: categories
                    .map((String title) =>
                        buildCategories(title: title, context: context))
                    .toList(),
              )
            ]),
          ),
          buildNav()
        ],
      )),
    );
  }
}

Widget buildCategories({required String title, context}) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => CategoryPage())),
    child: Container(
      margin: EdgeInsets.only(bottom: 16),
      child: HeadlineText(title: title, fontsize: 16),
      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4))
          ]),
    ),
  );
}
