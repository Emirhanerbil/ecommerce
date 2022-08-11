import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:ecommerce/components/header.dart';
import 'package:ecommerce/pages/product.dart';
import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:ecommerce/utilities/text_utilities.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  String categoryTitle;
  CategoryPage(this.categoryTitle);

  List<Map> products = [
    {
      "name": "HP Laptop",
      "image": "assets/images/hp-laptop.png",
      "price": "500"
    },
    {
      "name": "Acer Laptop",
      "image": "assets/images/acer-laptop.png",
      "price": "300"
    },
    {
      "name": "MSI Laptop",
      "image": "assets/images/msi-laptop.png",
      "price": "1000"
    },
    {
      "name": "Samsung Laptop",
      "image": "assets/images/samsung-laptop.png",
      "price": "750"
    },
    {
      "name": "Macbook Air",
      "image": "assets/images/macbook-air.png",
      "price": "1500"
    },
    {
      "name": "Asus Laptop",
      "image": "assets/images/asus-laptop.png",
      "price": "399"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: PagePadding().pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header
                header(categoryTitle, context),
                SizedBox(height: 32),

                //Contents

                Expanded(
                  child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2,
                      children: products.map((Map product) {
                        return buildContent(product["name"], product["image"],
                            product["price"], context);
                      }).toList()),
                )
              ],
            ),
          ),
          buildNav("search")
        ],
      )),
    );
  }
}

Widget buildContent(String title, String photoPath, String price, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ProductDetailPage(title, photoPath, price);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 24,
                offset: Offset(0, 16))
          ]),
      child: Column(
        children: [
          SizedBox(height: 16),
          Image.asset(photoPath, width: 100, height: 100),
          SizedBox(height: 20),
          Column(
            children: [
              HeadlineText(title: title, fontsize: 15),
              SubText(title: "USD ${price}", fontsize: 14),
            ],
          ),
        ],
      ),
    ),
  );
}
