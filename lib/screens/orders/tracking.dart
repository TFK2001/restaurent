import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restorant/screens/config.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  final String officer_name;
  final String officer_image;
  final double officer_rating;
  final int officer_person_rated;
  Tracking(
      {required this.officer_name,
      required this.officer_image,
      required this.officer_rating,
      required this.officer_person_rated});

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget delivery_map() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 70,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle:
                  IndicatorStyle(height: 20, color: Colors.grey.shade600),
              afterLineStyle: LineStyle(color: Colors.grey.shade600),
              beforeLineStyle: LineStyle(color: Colors.transparent),
              alignment: TimelineAlign.manual,
              endChild: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Order confirmed',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Container(
            height: 70,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle:
                  IndicatorStyle(height: 20, color: Colors.grey.shade600),
              afterLineStyle: LineStyle(color: Colors.grey.shade600),
              beforeLineStyle: LineStyle(color: Colors.grey.shade600),
              alignment: TimelineAlign.manual,
              endChild: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Preparing your order',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Container(
            height: 70,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle:
                  IndicatorStyle(height: 20, color: Colors.grey.shade600),
              afterLineStyle: LineStyle(color: Colors.grey.shade600),
              beforeLineStyle: LineStyle(color: Colors.grey.shade600),
              alignment: TimelineAlign.manual,
              endChild: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Order is ready at the restaurant',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Container(
            height: 70,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 20, color: primeryColor),
              afterLineStyle: LineStyle(color: Colors.grey.shade400),
              beforeLineStyle: LineStyle(color: Colors.grey.shade600),
              alignment: TimelineAlign.manual,
              endChild: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Rider is picking on your order',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primeryColor),
                  )),
            ),
          ),
          Container(
            height: 70,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle:
                  IndicatorStyle(height: 20, color: Colors.grey.shade400),
              afterLineStyle: LineStyle(color: Colors.transparent),
              beforeLineStyle: LineStyle(color: Colors.grey.shade400),
              alignment: TimelineAlign.manual,
              endChild: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Order delivered',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var officer_rating = widget.officer_rating;
    var officer_person_rated = widget.officer_person_rated;

    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: darkColor,
            size: 18,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: lightColor,
        centerTitle: true,
        title: Text(
          'Tracking Order',
          style: TextStyle(color: darkColor),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text("Chat ",
                        style: TextStyle(
                            color: primeryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chat,
                      color: primeryColor,
                    )
                  ],
                )),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          Text(
            "Estimate Delivery Time",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
            textAlign: TextAlign.center,
          ),
          Text(
            "05:30 PM",
            style: TextStyle(
             fontSize: 34,  color: primeryColor,letterSpacing: 4.0,fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Divider(
            thickness: 5,
            color: Colors.grey[200],
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(widget.officer_image),
                ),
                subtitle: Container(
                  // padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    widget.officer_name,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                title: Container(
                  padding: EdgeInsets.only(bottom: 1),
                  child: Text(
                    'delivered by',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                trailing: OverflowBar(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: primeryColor,
                    ),
                    Text(
                      '$officer_rating',
                      style: TextStyle(
                          color: primeryColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '  ($officer_person_rated rating)',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          delivery_map(),
          Container(
            padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 10),
            child:Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Total amount',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey[700]),),
            Text('1050 DA',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:primeryColor)),
          ],),
          Divider(
            color: Colors.grey[300],
            thickness: 2,)
          ,Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Delivery',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey[700])),
            Text('250 DA',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:primeryColor,)),
          ],),
          Divider(
            color: Colors.grey[300],
            thickness: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey[700])),
            Text('1300 DA',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:primeryColor,)),
          ],),
        ]))
        ],
      ),
      bottomNavigationBar: Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10))
          ),
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(top: 15,bottom: 15),
              decoration: BoxDecoration(
            color: primeryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
              child: Text('Cancel order',style: TextStyle(color: lightColor,fontSize: 18,fontWeight: FontWeight.w500),)),
          )),
    );
  }
}
