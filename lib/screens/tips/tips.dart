import 'package:flutter/material.dart';
import 'package:restorant/screens/account/login.dart';
import 'package:restorant/screens/config.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../account/singup.dart';

class Tips extends StatefulWidget {
  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarray = [
    {
      'title': 'Find foods you love',
      'info': 'Discover the food from our restaruant.',
      'image': 'images/tip2.png'
    },
    {
      'title': 'Fast delivery',
      'info': 'Fast Delivery to your home, office and wherever you are.',
      'image': 'images/tip3.png'
    },
    {
      'title': 'Live tracking',
      'info': 'Real time traking of your food on the app after ordered.',
      'image': 'images/tip2.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 6;
    return Scaffold(
      body: new Container(
        child: Column(
          children: <Widget>[
            new Container(
                height: 2 * myheight / 3,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(top: 30, left: 15),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: primeryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            new Container(
              height: myheight * 4,
              child: new PageIndicatorContainer(
                  shape: IndicatorShape.circle(),
                  length: myarray.length,
                  align: IndicatorAlign.bottom,
                  indicatorColor: lightColor,
                  indicatorSelectorColor: primeryColor,
                  child: PageView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: myarray.length,
                      itemBuilder: (BuildContext context, i) {
                        return new SingleTips(
                          title: myarray[i]['title'] as String,
                          info: myarray[i]['info'] as String,
                          image: myarray[i]['image'] as String,
                        );
                      })),
            ),
            new Container(
              height: 4 * myheight / 3,
              child: ListView(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Singup())),
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: primeryColor,
                                ),
                                padding: EdgeInsets.only(bottom: 10, top: 10),
                                child: Text(
                                  'Create account',
                                  style: TextStyle(
                                      color: lightColor, fontSize: 20),
                                )),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          MaterialButton(
                            onPressed: () {},
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue[800],
                                ),
                                padding: EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      size: 20,
                                      color: lightColor,
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Text(
                                      'Login Facebook',
                                      style: TextStyle(
                                          color: lightColor, fontSize: 20),
                                    )
                                  ],
                                )),
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

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;
  SingleTips({required this.title, required this.info, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        new Padding(
            padding: EdgeInsets.all(10),
            child: Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primeryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold))),
        new Padding(
            padding: EdgeInsets.only(bottom: 30, left: 50, right: 50),
            child: Text(info,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )))
      ],
    ));
  }
}
