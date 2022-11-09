import 'package:flutter/material.dart';
import 'package:restorant/screens/Home/home.dart';
import 'package:restorant/screens/account/forget.dart';
import 'package:restorant/screens/account/singup.dart';
import 'package:restorant/screens/config.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[800],
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
              margin: EdgeInsets.only(bottom: 15, left: 30, right: 30),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Form(
                          child: ListView(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(bottom: 50),
                          child: Text(
                            'Change \nPassword',
                            style: TextStyle(
                                fontSize: 30,
                                color: primeryColor,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: lightColor),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Current password',
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.indexOf('.') == -1 ||
                                  value.indexOf('@') == -1) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          )),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: lightColor),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'New password',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter new password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: lightColor),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Confirm password',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter new password';
                            }
                            return null;
                          },
                        ),
                      ),
                      MaterialButton(
                        onPressed: (() => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()))),
                        child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: primeryColor,
                            ),
                            padding: EdgeInsets.only(bottom: 13, top: 13),
                            child: Text(
                              'Change password',
                              style: TextStyle(color: lightColor, fontSize: 20),
                            )),
                      ),
                    ],
                  ))),
                ],
              ),
            )));
  }
}
