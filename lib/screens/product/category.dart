import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restorant/screens/config.dart';
import 'package:restorant/screens/product/sub_catigory.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primeryColor,
        title: Text(
          'Food Menu',
          style: TextStyle(color: lightColor),
        ),
      ),
      body: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: myarray_category.length,
            itemBuilder: (BuildContext contex, i) {
              return SingelCategorie(
                  cat_id: myarray_category[i]['cat_id'] as String,
                  cat_name: myarray_category[i]['cat_name'] as String,
                  cat_image: myarray_category[i]['cat_image'] as String);
            }),
      ),
    );
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
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        children: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        SubCategory(cat_id: cat_id, cat_name: cat_name)))),
            child: ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: primeryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(cat_image),
                ),
                title: Text(
                  cat_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              color: Colors.grey[300],
              thickness: 2,
            ),
          )
        ],
      ),
    );
  }
}
