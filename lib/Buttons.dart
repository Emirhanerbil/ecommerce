import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:flutter/material.dart';

Widget Navigations() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Navigation(text: 'Categories', icon: Icons.menu_rounded, widget: sa()),
      Navigation(text: 'Favorites', icon: Icons.favorite_border, widget: sa()),
      Navigation(text: 'Highly Rated', icon: Icons.star_border, widget: sa()),
    ],
  );
}

class sa extends StatelessWidget {
  const sa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Widget Navigation(
    {required String text,
    required IconData icon,
    required Widget widget,
    BuildContext? context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Padding(
      padding: PagePadding().pagePaddingHorizontal,
      child: Column(children: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blueGrey[200],
          child: IconButton(
            onPressed: () {},
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
    ),
  );
}
