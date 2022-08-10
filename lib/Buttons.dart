import 'package:ecommerce/pages/categories.dart';
import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:flutter/material.dart';

Widget Navigation(
    {required String text,
    required IconData icon,
    required Widget widget,
    required BuildContext context}) {
  return Padding(
    padding: PagePadding().pagePaddingHorizontal,
    child: Column(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 210, 216, 223)),
        child: IconButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget)),
          icon: Icon(
            icon,
            color: Colors.indigo,
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        text,
        style: const TextStyle(
            color: Colors.indigo, fontWeight: FontWeight.w500, fontSize: 14),
      ),
    ]),
  );
}
