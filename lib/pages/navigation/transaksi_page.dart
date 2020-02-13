import 'package:flutter/material.dart';
import 'package:laundryku/pages/navigation/cari_customer.dart';

class Transaksi_page extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}
class HomeState extends State<Transaksi_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(

        appBar: new AppBar(
          backgroundColor: Colors.orangeAccent.shade700,
          automaticallyImplyLeading: false,
          title:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Cari_Customer()));
                },
                child: Container(
                  height: 44,
                  child: Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Icon(Icons.person,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text('Pilih Pelanggan'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(width: 100,),
                        Icon(Icons.arrow_drop_down,color: Colors.grey,),
                      ],
                    )
                  ],
            ),
                ),
              ),
            ),
          ),

          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                text: "Kiloan",
              ),
              new Tab(
                text: "Satuan",
              ),
            ],
          ),

        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              
            ),
            new Container(

            ),
          ],
        ),

      ),
    );
  }
}