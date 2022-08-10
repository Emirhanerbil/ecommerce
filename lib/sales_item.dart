import 'package:ecommerce/utilities/text_utilities.dart';
import 'package:flutter/material.dart';

Widget buildSalesItem(
    {required double screenWidth,
    required String text,
    required String photodir,
    required String discount}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: const EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: HeadlineText(title: discount, fontsize: 12),
        ),
        Image.asset(
          photodir,
          height: 200,
          width: 200,
        ),
        Center(child: HeadlineText(title: text, fontsize: 20))
      ],
    ),
  );
}
