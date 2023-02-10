import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Details Screen.dart';

class shoppersitems{
final Image image1;
final String name;
final String price;
final String description;
shoppersitems({
  required this.image1,
  required this.name,
  required this.price,
  required this.description,
});
}

void main()
{
  runApp(shoppers());
}

class shoppers extends StatelessWidget{
  List<shoppersitems> ListOfItems=[
    shoppersitems(image1: Image.network('https://m.media-amazon.com/images/I/51R+i3ClvSL._AC_SL1000_.jpg'),name: "Smart Watch",price: "Rs.5000.00",description: "this is a smart watch"),
    shoppersitems(image1: Image.network('https://5.imimg.com/data5/ANDROID/Default/2021/6/DE/CM/LT/129039116/product-jpeg-1000x1000.jpg'),name: "Adidas shoe",price: "Rs.20000.00",description: "this is an adidas shoes"),
    shoppersitems(image1: Image.network('https://m.media-amazon.com/images/I/51R+i3ClvSL._AC_SL1000_.jpg'),name: "Smart Watch",price: "Rs.5000.00",description: "this is a smart watch"),
    shoppersitems(image1: Image.network('https://5.imimg.com/data5/ANDROID/Default/2021/6/DE/CM/LT/129039116/product-jpeg-1000x1000.jpg'),name: "Adidas shoe",price: "Rs.20000.00",description: "this is an adidas shoes"),
    shoppersitems(image1: Image.network('https://m.media-amazon.com/images/I/51R+i3ClvSL._AC_SL1000_.jpg'),name: "Smart Watch",price: "Rs.5000.00",description: "this is a smart watch"),
    shoppersitems(image1: Image.network('https://5.imimg.com/data5/ANDROID/Default/2021/6/DE/CM/LT/129039116/product-jpeg-1000x1000.jpg'),name: "Adidas shoe",price: "Rs.20000.00",description: "this is an adidas shoes"),

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
           Text(
              "SHOPPERS",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
              ),
          backgroundColor: Colors.white,
        ),
        body:
        GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 2.5 / 3,
                crossAxisSpacing: 80,
                mainAxisSpacing: 10),
            itemCount: ListOfItems.length,
            itemBuilder: (context, index) {
    return InkWell(
    child: Container(
    width: double.infinity,
    height: 200,
    margin: const EdgeInsets.all(25),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow:[
    BoxShadow(
    color: Colors.grey.withOpacity(0.5), //color of shadow
    spreadRadius: 5, //spread radius
    blurRadius: 7, // blur radius
    offset: Offset(0, 2), // changes position of shadow
    //first paramerter of offset is left-right
    //second parameter is top to down
    ),
    //you can set more BoxShadow() here
    ],
    ),
    child: Column(
    children: [
    Container(
      child: ListOfItems[index].image1,

    width: 200,
    height: 160,
    ),
    Text(
        ListOfItems[index].name,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
    ),
    Text(
        ListOfItems[index].price,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
    )
    ],
    ),
    ),
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return detailsScreen(listOfItem: ListOfItems[index]);
          }
          )
      );


    }
    );


    },
    ),
      ),
    );

  }

}
