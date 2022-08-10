import 'package:ecommerce/utilities/text_utilities.dart';
import 'package:flutter/material.dart';

Widget header(String title, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: Colors.indigo, size: 27)),
      const SizedBox(height: 24),
      HeadlineText(title: title, fontsize: 24)
    ],
  );
}
