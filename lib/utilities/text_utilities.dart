import 'package:flutter/material.dart';

const String bannerText = "Speaker";
const String bannerAltText = "Speaker";

class BannerText extends StatelessWidget {
  const BannerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Speaker',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600));
  }
}

Widget HeadlineText({required String title, required double fontsize}) {
  return Text(
    title,
    style: TextStyle(
        fontSize: fontsize,
        color: const Color(0xFF0A1034),
        fontWeight: FontWeight.bold),
  );
}
