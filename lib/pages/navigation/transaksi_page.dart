import 'package:flutter/material.dart';

class Transaksi_page extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}
class HomeState extends State<Transaksi_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.orangeAccent.shade700,
        automaticallyImplyLeading: false,
        title: Text("Transaksi"),
      ),

    );
  }
}