import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:ecommerce/utilities/padding_utilities.dart';
import 'package:ecommerce/utilities/text_utilities.dart';
import 'package:flutter/material.dart';

import '../components/header.dart';

class ProductDetailPage extends StatefulWidget {
  String productTitle;
  String imagePath;
  String price;

  ProductDetailPage(this.productTitle, this.imagePath, this.price);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  Color? selectedColor;
  int? selectedCapacity;

  List<Color> colors = [Colors.black, Colors.red, Colors.blue];
  List<int> capacities = [64, 128, 256, 512];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      ListView(children: [
        Padding(
            padding: PagePadding().pagePadding,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //Header
              header(widget.productTitle, context),
              const SizedBox(height: 32),
              //Image

              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 24,
                          offset: Offset(0, 16))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(widget.imagePath),
              ),
              const SizedBox(height: 30),

              //Color options
              Center(child: SubText(title: "Colours", fontsize: 20)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: colors
                    .map((Color color) => colorOption(
                        color: color,
                        selectedColor: selectedColor == color,
                        onTap: () {
                          setState(() {
                            selectedColor = color;
                          });
                        }))
                    .toList(),
              ),

              //Capaticies

              const SizedBox(height: 20),
              Center(child: SubText(title: "Capacity", fontsize: 20)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: capacities
                    .map((int number) => capacityOption(
                        capacity: number,
                        selected: selectedCapacity == number,
                        onTap: () {
                          setState(() {
                            selectedCapacity == number;
                          });
                        }))
                    .toList(),
              ),
              const SizedBox(height: 32),

              //Add to cart
              GestureDetector(
                onTap: () {
                  showAlertDialog(context,
                      widget.productTitle + " Has Been Succesfully Added");
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFF1F53E4)),
                  child: const Text(
                    "Add To Cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: 100)
            ])),
      ]),
      buildNav("search")
    ])));
  }
}

Widget colorOption(
    {required Color color,
    required bool selectedColor,
    required Function onTap}) {
  return GestureDetector(
    onTap: onTap(),
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
            color: Color.fromARGB(255, 53, 121, 13),
            width: selectedColor ? 15 : 0),
      ),
      width: 23,
      height: 23,
    ),
  );
}

Widget capacityOption(
    {required int capacity, required bool selected, required Function onTap}) {
  return GestureDetector(
    onTap: onTap(),
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        "${capacity}GB ",
        style: TextStyle(
          color: selected ? Colors.black : Colors.blue,
          fontSize: 16,
        ),
      ),
    ),
  );
}

showAlertDialog(BuildContext context, String msg) {
  Widget okButton =
      FlatButton(onPressed: Navigator.of(context).pop, child: Text("OK"));

  AlertDialog alert = AlertDialog(
    title: Text("Succes"),
    content: Text(msg),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
