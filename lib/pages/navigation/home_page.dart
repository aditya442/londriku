import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}
class HomeState extends State<Home_page>{

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Stack(
           children: <Widget>[
            Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(110)),
                color: Colors.orangeAccent.shade700,
            ),
            width: double.infinity,
          ),
             Container(
            margin: EdgeInsets.only(right: 180, bottom: 110),
            width: 299,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.orangeAccent.shade400,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(110),
                    bottomRight: Radius.circular(390),
                    topRight: Radius.circular(10))),
          ),
             Container(
               margin: EdgeInsets.only(left: 0, bottom: 110),
               width: 299,
               height: 150,
               decoration: BoxDecoration(
                   color: Colors.orangeAccent.shade400,
                   borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(0),
                       bottomRight: Radius.circular(390),
                       topRight: Radius.circular(10))),
             ),
          CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      Text("",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      Text("Hello , Aditya",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      SizedBox(
                        height: 90,
                      ),


                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(26.0),
                sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5,
                      child: Center(
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                             Container(
                               height: 60,
                                 width: double.infinity,
                                 child: Image.asset("assets/images/supermarket.png")),
                              SizedBox(height: 10,),
                              Text('Toko',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5,
                      child: Center(
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  height: 60,
                                  width: double.infinity,
                                  child: Image.asset("assets/images/washing-clothes.png")),
                              SizedBox(height: 10,),
                              Text('Layanan',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5,
                      child: GestureDetector(
                        onTap: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 60,
                                width: double.infinity,
                                child: Image.asset("assets/images/report.png")),
                            SizedBox(height: 10,),
                            Text('Laporan',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5,
                      child: GestureDetector(
                        onTap: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 60,
                                width: double.infinity,
                                child: Image.asset("assets/images/support.png")),
                            SizedBox(height: 10,),
                            Text('Pelanggan',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}