import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config.dart';


class counter extends StatefulWidget {
  int index;
  double size;
  counter({required this.index,required this.size});
  @override
  State<counter> createState() => _counterState(index,size);
}

class _counterState extends State<counter> {
  @override
  int index;
  double size;
  _counterState(this.index,this.size);
  Widget build(BuildContext context) {
    return Container(
      child:           Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // =============================minus button
              Container(
                height: 40*size,
                width: 40*size,
                decoration: BoxDecoration(
                    color: primeryColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10*size),topLeft: Radius.circular(10*size))),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (index > 1) {
                          index--;
                        }
                      });
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.minus,
                      size: 16*size,
                    ),
                    color: lightColor),
              ),
                // ===============================counter
              Container(
                  padding: EdgeInsets.all(8*size),
                  color: lightColor,
                  child: Text(
                    '$index',
                    style: TextStyle(fontSize: 20*size,color: darkColor,fontWeight: FontWeight.bold),
                  
                  )
                  
                  ),
              // ===============================add button
              Container(
                height: 40*size,
                width: 40*size,
                decoration: BoxDecoration(
                    color: primeryColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10*size),topRight: Radius.circular(10*size))),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        index++;
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.plus,
                      size: 16*size,
                    ),
                    color: lightColor),
              ),
            ],
          ),
    );
  }
}