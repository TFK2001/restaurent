import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:restorant/screens/tips/getStart.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:restorant/screens/config.dart';
  
void main() {

  runApp(MaterialApp( 
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3 ,
      navigateAfterSeconds: new GetStart(),
      title: new Text(
        'Welcome In our restorent',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: lightColor),
      ),
      image: Image.asset(
          'images/categories/cat02.png'),
      backgroundColor: primeryColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("restarent"),
      loaderColor: lightColor,      
    );
  }
}

