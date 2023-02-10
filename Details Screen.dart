import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3msp/main.dart';

class detailsScreen extends StatelessWidget{
  shoppersitems listOfItem;
  detailsScreen({super.key, required this.listOfItem});

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
              "Details Screen",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  listOfItem.image1,
                  Text(listOfItem.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  Text(listOfItem.price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  Text("More Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                  Text(listOfItem.description,style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15)),
                ],
              )

            )

          ],
        ),
      ),

    );
  }

}