import 'package:flutter/material.dart';
import 'package:restorant/screens/config.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:restorant/screens/myDrawer/Mydrawer.dart';

import '../product/product_detail.dart';
// import 'package:flutter/src/material/scaffold.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();

  var myarray_category = [
    {
      'cat_id': 'C01',
      'cat_name': 'Pizza ',
      'cat_image': 'images/categories/cat01.png'
    },
    {
      'cat_id': 'C02',
      'cat_name': 'Burger',
      'cat_image': 'images/categories/cat02.png'
    },
    {
      'cat_id': 'C03',
      'cat_name': 'Sandwish',
      'cat_image': 'images/categories/cat03.png'
    },
    {
      'cat_id': 'C04',
      'cat_name': 'Frit',
      'cat_image': 'images/categories/cat04.png'
    },
    {
      'cat_id': 'C05',
      'cat_name': 'Sushi',
      'cat_image': 'images/categories/cat05.png'
    },
    {
      'cat_id': 'C06',
      'cat_name': 'chiken',
      'cat_image': 'images/categories/cat06.png'
    },
    {
      'cat_id': 'C07',
      'cat_name': 'Spagetti',
      'cat_image': 'images/categories/cat07.png'
    },
    {
      'cat_id': 'C08',
      'cat_name': 'cafeteiria',
      'cat_image': 'images/categories/cat08.png'
    },
    {
      'cat_id': 'C09',
      'cat_name': 'jus',
      'cat_image': 'images/categories/cat09.png'
    },
    {
      'cat_id': 'C10',
      'cat_name': 'donut',
      'cat_image': 'images/categories/cat10.png'
    },
  ];

  var myarray_product = [
    {
      'prod_id': 'P01',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
    },
    {
      'prod_id': 'P02',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.9,
    },
    {
      'prod_id': 'P03',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
    },
    {
      'prod_id': 'P04',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.9,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _keyDrawer,
        drawer: MyDrawer(),
        body: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(children: [
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Delivering to',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Current location',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: primeryColor,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              new Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                          child: new Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.only(right: 10, left: 15),
                              child: new TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search'),
                              ))),
                      GestureDetector(
                          onTap: (() {
                            _keyDrawer.currentState?.openDrawer();
                          }),
                          child: new Icon(
                            Icons.menu,
                            color: primeryColor,
                            size: 30,
                          ))
                    ],
                  )),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myarray_category.length,
                      itemBuilder: (BuildContext contex, i) {
                        return SingelCategorie(
                            cat_id: myarray_category[i]['cat_id'] as String,
                            cat_name: myarray_category[i]['cat_name'] as String,
                            cat_image:
                                myarray_category[i]['cat_image'] as String);
                      })),
              Expanded(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: myarray_product.length,
                          itemBuilder: (BuildContext contex, i) {
                            return SingelProduct(
                                prod_id:
                                    myarray_product[i]['prod_id'] as String,
                                prod_name:
                                    myarray_product[i]['prod_name'] as String,
                                prod_image:
                                    myarray_product[i]['prod_image'] as String,
                                prod_discription: myarray_product[i]
                                    ['prod_discription'] as String,
                                prod_price:
                                    myarray_product[i]['prod_price'] as double,
                                prod_rating: myarray_product[i]['prod_rating']
                                    as double);
                          }))),
            ])),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: primeryColor,
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu), label: 'Restaurant'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer), label: 'offers'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
          ],
        ));
  }
}

class SingelCategorie extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;
  SingelCategorie(
      {required this.cat_id, required this.cat_name, required this.cat_image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: primeryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(cat_image),
        ),
        Text(
          cat_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}

class SingelProduct extends StatelessWidget {
  final String prod_id;
  final String prod_name;
  final String prod_image;
  final String prod_discription;
  final double prod_price;
  final double prod_rating;
  SingelProduct(
      {required this.prod_id,
      required this.prod_name,
      required this.prod_image,
      required this.prod_discription,
      required this.prod_rating,
      required this.prod_price});
  @override
  Widget build(BuildContext context) {
    double mywhidh = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => ProductDetils(
                    prod_id: prod_id,
                    prod_name: prod_name,
                    prod_image: prod_image,
                    prod_discription: prod_discription,
                    prod_price: prod_price,
                    prod_rating: prod_rating,
                  )))),
      child: Container(
        width: mywhidh,
        child: Column(
          textDirection: TextDirection.ltr,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mywhidh / 1.77,
              width: mywhidh,
              child: Image.asset(
                prod_image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    overflow: TextOverflow.ellipsis)),
            Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: primeryColor,
                      size: 15,
                    ),
                    Text(
                      '($prod_rating)   ',
                      style: TextStyle(
                          color: primeryColor, fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                        child: Text(
                      prod_discription,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
