
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:restorant/screens/config.dart';
import 'package:restorant/screens/tips/tips.dart';

class GetStart extends StatefulWidget {


  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {

  @override
  Widget build(BuildContext context) {
    List<String> myarry=[
    'images/getStart/getStart1.jpg',
    'images/getStart/getStart2.jpg',
    'images/getStart/getStart3.jpg',
    'images/getStart/getStart5.jpg',
    ];
    Random random = new Random();
    int randomNumber = random.nextInt(myarry.length);
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              height: myheight * 2,
              decoration: BoxDecoration(
                color: lightColor,
                image: DecorationImage(
                    image: AssetImage(myarry[randomNumber]), fit: BoxFit.cover),
              ),

            )),
            new Container(
              height: 200,
              decoration: BoxDecoration(
                  color: primeryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "LIH LIH FOOD",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: lightColor,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "more then 10000 user in \nthe word",
                                textAlign: TextAlign.left,
                                style:
                                    TextStyle(color: lightColor, fontSize: 16),
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Tips();
                              }));
                            },
                            child: Container(
                              child: Text(
                                'Get Start',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              padding: EdgeInsets.only(
                                  left: 45, right: 45, top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                color: lightColor,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
