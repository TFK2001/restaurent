import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restorant/screens/component/componets.dart';
import 'package:restorant/screens/config.dart';
import 'package:restorant/screens/orders/tracking.dart';

class Shopping_cart extends StatefulWidget {
  @override
  State<Shopping_cart> createState() => _ProductDetilsState();
}

class _ProductDetilsState extends State<Shopping_cart> {
  var myarray_product = [
    {
      'prod_id': 'P01',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_price': 300.0,
      'prod_qty': 2
    },
    {
      'prod_id': 'P02',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_price': 450.0,
      'prod_qty': 1
    },
  ];
  var officer_array = {
    'officer_name': 'tarik bouchma',
    'officer_image': 'images/persons/person1.jpg',
    'officer_rating': 4.7,
    'officer_person_rated': 120,
  };

  Widget headerBuild() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
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
          Expanded(child: Text("")),
        ],
      ),
    );
  }

  void _showSheetMessage(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: ListView(children: [
              Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Icon(
                    Icons.check_circle_outline_sharp,
                    color: primeryColor,
                    size: 100,
                  )),
              Text(
                'Thank you for\nyour order.\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 23,
                    color: primeryColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'you can track the delivery in\nthe "Order" section.\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                onPressed: (() => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Tracking(
                                        officer_name:officer_array['officer_name'] as String ,
                                        officer_image:officer_array['officer_image'] as String ,
                                        officer_rating:officer_array['officer_rating'] as double,
                                        officer_person_rated:officer_array['officer_person_rated'] as int,
                                      )))),
                child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: primeryColor,
                    ),
                    padding: EdgeInsets.only(bottom: 13, top: 13),
                    child: Text(
                      'Track my order',
                      style: TextStyle(color: lightColor, fontSize: 20),
                    )),
              ),
              Container(
               
                margin: EdgeInsets.only(top: 15),
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                           boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3))
                    ],
                    color: lightColor,
                      ),
                      padding: EdgeInsets.only(bottom: 13, top: 13),
                      child: Text(
                        'Order somthing else',
                        style: TextStyle(color: Colors.grey[800], fontSize: 20),
                      )),
                ),
              )
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            child: headerBuild(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myarray_product.length,
              itemBuilder: (context, Index) {
                return SingleProduct(
                    prod_id: myarray_product[Index]['prod_id'] as String,
                    prod_name: myarray_product[Index]['prod_name'] as String,
                    prod_image: myarray_product[Index]['prod_image'] as String,
                    prod_price: myarray_product[Index]['prod_price'] as double,
                    prod_qty: myarray_product[Index]['prod_qty'] as int);
              },
            ),
          ),
          Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total amount',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                    ),
                    Text('1050 DA',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primeryColor)),
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700])),
                    Text('250 DA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primeryColor,
                        )),
                  ],
                ),
              ]))
        ]),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {
          _showSheetMessage(context);
        },
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
                "1300 DA     ",
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
                          Icons.check_circle,
                          color: lightColor,
                        )),
                    Text(" Confirm Order",
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

class SingleProduct extends StatelessWidget {
  final String prod_id;
  final String prod_name;
  final String prod_image;
  final double prod_price;
  final int prod_qty;
  SingleProduct(
      {required this.prod_id,
      required this.prod_name,
      required this.prod_image,
      required this.prod_price,
      required this.prod_qty});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10),
          child: GestureDetector(
              onTap: () {}, child: Icon(Icons.cancel, color: Colors.red)),
        ),
        ListTile(
            title: Text(
              prod_name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('$prod_price DA'),
            leading: Container(
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(prod_image), fit: BoxFit.cover)),
            ),
            trailing: Container(
                width: 140, child: counter(index: prod_qty, size: 0.9))),
      ],
    );
  }
}
