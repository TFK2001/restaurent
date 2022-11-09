import 'package:flutter/material.dart';
import 'package:restorant/screens/account/login.dart';
import 'package:restorant/screens/config.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                          'Create your\naccount',
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
                            hintText: 'Full Name',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
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
                    Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: lightColor),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: lightColor),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 5) {
                              return 'Please enter your phone Number';
                            }
                            return null;
                          },
                        )),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: primeryColor,
                          ),
                          padding: EdgeInsets.only(bottom: 13, top: 13),
                          child: Text(
                            'Sing Up',
                            style: TextStyle(color: lightColor, fontSize: 20),
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'by clicking Sign up you agree to the our Terms and Conditions',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ))),
                Container(
                  child: OverflowBar(
                    children: [
                      Text(
                        'Already an account?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login())),
                          child: Text(
                            'Log in',
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
          )),

      
    );
  }
}
