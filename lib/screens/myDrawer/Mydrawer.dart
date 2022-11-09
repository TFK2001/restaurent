import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restorant/screens/account/change_password.dart';
import 'package:restorant/screens/account/profile.dart';
import 'package:restorant/screens/config.dart';
import 'package:restorant/screens/orders/tracking.dart';
import 'package:restorant/screens/product/category.dart';
import 'package:restorant/screens/product/favorite.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
    var officer_array={
    'officer_name':'tarik bouchma',
    'officer_image':'images/persons/person1.jpg',
    'officer_rating':4.7,
    'officer_person_rated':120,
  };
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('user Name',
                      style: TextStyle(fontSize: 20, color: darkColor)),
                  accountEmail: Text('userName@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                        backgroundColor: primeryColor,
                        child: Icon(
                          Icons.person,
                          color: lightColor,
                        )),
                  ),
                  decoration: BoxDecoration(),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            "Home Page",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          leading: Icon(
                            Icons.home,
                            color: primeryColor,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Category())),
                        child: ListTile(
                          title: Text(
                            "FOOD Menu",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          leading: Icon(
                            Icons.restaurant_menu,
                            color: primeryColor,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile())),
                        child: ListTile(
                          title: Text(
                            "Setting",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          leading: Icon(
                            Icons.settings,
                            color: primeryColor,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            "My Account",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          leading: Icon(
                            Icons.person,
                            color: primeryColor,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      Theme(
                        data: theme,
                        child: ExpansionTile(
                          leading: Icon(
                            Icons.shopping_bag_sharp,
                            color: primeryColor,
                          ),
                          title: Text(
                            "Orders",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          children: [
                            InkWell(
                              onTap: () {},
                              child: ListTile(
                                title: Text(
                                  "My Orders",
                                  style:
                                      TextStyle(color: darkColor, fontSize: 16),
                                ),
                                leading: Icon(
                                  Icons.shopping_cart_rounded,
                                  color: primeryColor,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                              ),
                            ),
                           
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => new Tracking(
                                        officer_name:officer_array['officer_name'] as String ,
                                        officer_image:officer_array['officer_image'] as String ,
                                        officer_rating:officer_array['officer_rating'] as double,
                                        officer_person_rated:officer_array['officer_person_rated'] as int,
                                      ))),
                              child: ListTile(
                                title: Text(
                                  "Traking Orders",
                                  style:
                                      TextStyle(color: darkColor, fontSize: 16),
                                ),
                                leading: Icon(
                                  Icons.directions_car_rounded,
                                  color: primeryColor,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                              ),
                            ),
                         
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => new Favorite())),
                              child: ListTile(
                                title: Text(
                                  "My Favorite",
                                  style:
                                      TextStyle(color: darkColor, fontSize: 16),
                                ),
                                leading: Icon(
                                  Icons.star_rounded,
                                  color: primeryColor,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            "Support Center",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          leading: Icon(
                            Icons.phone,
                            color: primeryColor,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            "About Us",
                            style: TextStyle(color: darkColor, fontSize: 16),
                          ),
                          leading: Icon(
                            Icons.info_rounded,
                            color: primeryColor,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
