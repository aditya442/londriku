import 'package:flutter/material.dart';

class Cari_Customer extends StatefulWidget{
  @override
  CustomerState createState()=> CustomerState();
}
class CustomerState extends State<Cari_Customer>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade700,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              height: 40,
              child: TextField(

                cursorColor: Colors.deepOrange,
                decoration: InputDecoration(
                    hintText: "Search Costumer",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}