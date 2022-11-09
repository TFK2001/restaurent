import 'package:flutter/material.dart';
import 'package:restorant/screens/config.dart';
import 'package:restorant/screens/product/product.dart';

import 'category.dart';

class SubCategory extends StatefulWidget {
final String cat_id;
final String cat_name;
  SubCategory({required this.cat_id, required this.cat_name});
  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  List<List<String>> myarray_SubCategory = [
    ['C01', 'Pizza ', 'images/categories/cat01.png'],
    ['C02', 'Burger', 'images/categories/cat02.png'],
    ['C03', 'Hotdog', 'images/categories/cat03.png'],
    ['C04', 'Frit', 'images/categories/cat04.png'],
    ['C05', 'Sushi', 'images/categories/cat05.png'],
    ['C06', 'chiken', 'images/categories/cat06.png'],
    ['C07', 'Spagetti', 'images/categories/cat07.png'],
    ['C08', 'cafeteiria', 'images/categories/cat08.png'],
    ['C09', 'jus', 'images/categories/cat09.png'],
    ['C10', 'donut', 'images/categories/cat10.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primeryColor,
        title: Text(widget.cat_name,style: TextStyle(color: lightColor),),
      ),
      body: Container(
        child:  ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: myarray_SubCategory.length,
                        itemBuilder: (BuildContext contex, i) {
                          return SingelCategorie(myarray_SubCategory[i][0],
                              myarray_SubCategory[i][1], myarray_SubCategory[i][2]);
                        }),
      ),
    );
  }
}

class SingelCategorie extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;
  SingelCategorie(this.cat_id, this.cat_name, this.cat_image);
    

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
      child: Column(
        children: [
          InkWell(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: ((context) => Product()))),
            child: ListTile(
              leading:Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primeryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset(cat_image),
              ),
              title:Text(
                cat_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing : Icon(Icons.arrow_forward_ios)
            ),
          ),
         Padding(
           padding: EdgeInsets.only(left: 10,right: 10),
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
