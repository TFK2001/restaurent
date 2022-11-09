import 'package:flutter/material.dart';
import 'package:restorant/screens/account/singup.dart';
import 'package:restorant/screens/config.dart';

class Forget extends StatefulWidget {
  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
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
                            'Forgot password',
                            style: TextStyle(
                                fontSize: 30,
                                color: primeryColor,
                                fontWeight: FontWeight.bold),
                          )),
                          Container(
                          margin: EdgeInsets.only(bottom: 50),
                          child: Text(
                            'Please enter your email to receive a link to create a new password via email',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
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
                              hintText: 'E_mail',
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.indexOf('.') == -1 ||
                                  value.indexOf('@') == -1) {
                                return 'Please enter e_mail';
                              }
                              return null;
                            },
                          )),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: primeryColor,
                            ),
                            padding: EdgeInsets.only(bottom: 13, top: 13),
                            child: Text(
                              'Send',
                              style: TextStyle(color: lightColor, fontSize: 20),
                            )),
                      ),
                    ],
                  ))),
                  Container(
                    child: OverflowBar(
                      
                      children: [
                        Text(
                          "Don't have account?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Singup())),
                            child: Text(
                              'Sing up',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: primeryColor),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
