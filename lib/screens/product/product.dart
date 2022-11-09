import 'package:flutter/material.dart';
import 'package:restorant/screens/config.dart';
import 'package:restorant/screens/product/product_detail.dart';
// import 'package:restorant/screens/product/product_detail.dart';
// import 'package:restorant/screens/shopping%20cart/shopping_cart.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var myarray_product = [
    {
      'prod_id': 'P01',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },     
    {
      'prod_id': 'P02',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P03',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },
    {
      'prod_id': 'P04',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P01',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },     
    {
      'prod_id': 'P02',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P03',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },
    {
      'prod_id': 'P04',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P01',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },     
    {
      'prod_id': 'P02',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P03',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },
    {
      'prod_id': 'P04',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P01',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },     
    {
      'prod_id': 'P02',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
    {
      'prod_id': 'P03',
      'prod_name': 'Sandwish Hotdog',
      'prod_image': 'images/products/prod4.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 300.0,
      'prod_rating': 4.7,
      'prod_statu': true,
      'prod_is_liked': true
    },
    {
      'prod_id': 'P04',
      'prod_name': 'Large Burgur',
      'prod_image': 'images/products/prod5.jpg',
      'prod_discription':
          'put the category or the description of this produt put the category or the description of this produt put the category or the description of this produt',
      'prod_price': 450.0,
      'prod_rating': 4.9,
      'prod_statu': false,
      'prod_is_liked': false
    },
  ];
   Widget imageCover() {
    double mywhidh = MediaQuery.of(context).size.width;

    return Container(
              width: mywhidh,
              height: mywhidh / 1.4,
              child: Image.asset(
                'images/products/prod5.jpg',
                fit: BoxFit.cover,
              )
    );
  }
  @override

  Widget build(BuildContext context) {
    int item_count =myarray_product.length;
    return Scaffold(      
      body: CustomScrollView(
         slivers: [
           
        SliverAppBar(
          
          flexibleSpace: FlexibleSpaceBar(
            title:Text('Burger',style: TextStyle(fontSize: 25,),),
            background:imageCover(), 
            
            ),
            backgroundColor: primeryColor,
        pinned: true,
        expandedHeight: MediaQuery.of(context).size.width/1.4,
        ),
        SliverList(
          delegate:SliverChildBuilderDelegate((BuildContext context, int index){
                      if (index >= item_count) return null;
                      if (index ==0){
                        return Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                  
                    padding: EdgeInsets.all(20),
                    child: Text('$item_count articles',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),Container(
                            padding:
                                EdgeInsets.only(bottom: 8, left: 15, right: 15),
                            child: SingelProduct(
                              prod_id: myarray_product[index]['prod_id'] as String,
                              prod_name: myarray_product[index]['prod_name'] as String,
                              prod_image: myarray_product[index]['prod_image'] as String,
                              prod_discription:
                                  myarray_product[index]['prod_discription'] as String,
                              prod_price: myarray_product[index]['prod_price'] as double,
                              prod_rating: myarray_product[index]['prod_rating'] as double,
                              prod_statu: myarray_product[index]['prod_statu'] as bool,
                              prod_is_likde:
                                  myarray_product[index]['prod_is_liked'] as bool,
                            ),
                            
                          )
                        ],
                        );


                      }
                          return Container(
                            padding:
                                EdgeInsets.only(bottom: 8, left: 15, right: 15),
                            child: SingelProduct(
                              prod_id: myarray_product[index]['prod_id'] as String,
                              prod_name: myarray_product[index]['prod_name'] as String,
                              prod_image: myarray_product[index]['prod_image'] as String,
                              prod_discription:
                                  myarray_product[index]['prod_discription'] as String,
                              prod_price: myarray_product[index]['prod_price'] as double,
                              prod_rating: myarray_product[index]['prod_rating'] as double,
                              prod_statu: myarray_product[index]['prod_statu'] as bool,
                              prod_is_likde:
                                  myarray_product[index]['prod_is_liked'] as bool,
                            ),
                            
                          );
              
        }) ,)
        ],
      ),
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
  final bool prod_statu;
  final bool prod_is_likde;
  SingelProduct(
      {required this.prod_id,
      required this.prod_name,
      required this.prod_image,
      required this.prod_discription,
      required this.prod_rating,
      required this.prod_statu,
      required this.prod_price,
      required this.prod_is_likde});
  @override
  Widget build(BuildContext context) {
    Color overColor = (prod_statu) ? Colors.transparent : Colors.red;
    String over = (prod_statu) ? '' : 'over';
    double mywhidh = MediaQuery.of(context).size.width;
    return 
    Stack(children: [
      Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
          boxShadow:[
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.6),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 5))
                              ],
        ),
        padding: EdgeInsets.only(bottom: 10, top: 10),
        child: MaterialButton(
          onPressed: () => Navigator.push(
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      prod_image,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                
                
                child: Column(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween  ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prod_name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$prod_price DA ',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    OverflowBar(
                      children: [
                        Text(
                          ' ',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: primeryColor),
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: primeryColor,
                          size: 18,
                        ),
                        Text(
                          '( $prod_rating) ',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: primeryColor),
                        ),
                        Text(
                          '(1220 ratings)',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,overflow: TextOverflow.ellipsis,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            // Expanded(child: Container()),

            
                  Favorit(
          prod_is_like: prod_is_likde,
        ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        right: 10,
        height: 20,
        child:               Container(
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: overColor,
                    ),
                    
                height: 20,
                width: 50,
                padding: EdgeInsets.only(left: 3, right: 3),
                
                child: Text(over,
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ),
      ),
    ]);
  }
}

class Favorit extends StatefulWidget {
  bool prod_is_like;
  Favorit({required this.prod_is_like});

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  @override
  Widget build(BuildContext context) {
    Icon icn = (widget.prod_is_like)? Icon(Icons.favorite,color: Colors.red[400],size: 30,): Icon(Icons.favorite_border, color: Colors.grey[400], size: 30);

    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: (() {
            setState(() {
              widget.prod_is_like = !widget.prod_is_like;
            });
          }),
          child: icn,
        ),
      ],
    ));
  }
}
