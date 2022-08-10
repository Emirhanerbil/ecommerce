import 'package:ecommerce/utilities/box_utilities.dart';
import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:flutter/material.dart';

Widget banner() {
  return Padding(
    padding: PagePadding().pagePaddingHorizontal,
    child: Container(
      width: double.infinity,
      padding: BoxPadding().boxPadding,
      decoration: BoxUtilities().deco,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('IPhone 13',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 4,
              ),
              Text("USD 1000",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Image.asset(
            'assets/images/iPhone-13.png',
            height: 75,
          )
        ],
      ),
    ),
  );
}
