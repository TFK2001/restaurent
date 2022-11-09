// import 'dart:js_util';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restorant/screens/component/componets.dart';
import 'package:restorant/screens/config.dart';

import '../shopping cart/shopping_cart.dart';

class ProductDetils extends StatefulWidget {
  final String prod_id;
  final String prod_name;
  final String prod_image;
  final String prod_discription;
  final double prod_price;
  final double prod_rating;
  ProductDetils(
      {required this.prod_id,
      required this.prod_name,
      required this.prod_image,
      required this.prod_discription,
      required this.prod_rating,
      required this.prod_price});

  @override
  State<ProductDetils> createState() => _ProductDetilsState();
}

class _ProductDetilsState extends State<ProductDetils> {
  int quantity = 1;
  _ProductDetilsState();

  Widget imageProduct() {
    double mywhidh = MediaQuery.of(context).size.width;

    return Container(
        width: mywhidh,
        height: mywhidh / 1.77,
        child: Image.asset(
          widget.prod_image,
          fit: BoxFit.cover,
        ));
  }

  Widget headerBuild() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // =============================back button
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: lightColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios),
                color: primeryColor),
          ),

          // ===============================shopping button
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: lightColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Shopping_cart())),
                icon: Icon(Icons.shopping_cart),
                color: primeryColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double rating = widget.prod_rating;
    double price = widget.prod_price;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            ListView(children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: lightColor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 7))
                        ],
                        borderRadius: BorderRadius.circular(40)),
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        height: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          child: ImageFiltered(
                            imageFilter:
                                ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Image.asset(
                              widget.prod_image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(children: [
                        Container(
                          height: 80,
                        ),
                        imageProduct(),
                      ]),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        height: 40,
                        child: counter(
                          index: 1,
                          size: 1,
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.prod_name,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 26,
                            ),
                            Text(
                              '165',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Expanded(child: Text('')),
                            Icon(Icons.star, color: Colors.amber, size: 26),
                            Text(
                              '$rating',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '(1922 review)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 25)),
                        Text(
                          widget.prod_discription,
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ]),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 120,
              child: headerBuild(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 30, right: 20),
          height: 70,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  brightprimeryColor,
                  primeryColor,
                ],
                stops: [0.05, 0.5],
              ),
              borderRadius: BorderRadius.circular(40)),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            children: [
              Text(
                "$price DA     ",
                style: TextStyle(
                    color: lightColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    color: lightColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(40)),
                child: OverflowBar(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: lightColor.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          color: lightColor,
                        )),
                    Text(" Add to Cart",
                        style: TextStyle(
                            color: lightColor,
                            fontSize: 19,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
