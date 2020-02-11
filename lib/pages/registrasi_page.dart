import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundryku/pages/aktivasi_page.dart';

class Registrasi_page extends StatefulWidget{
  @override
  RegisState createState()=> RegisState();
}
class RegisState extends State<Registrasi_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back,size: 30,),color: Colors.blue[900],
            onPressed: ()=> Navigator.pop(context)),
      ),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.local_laundry_service,
                  color: Colors.blue[700],
                  size: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Registrasi',
                        style: TextStyle(
                         color: Color(0xff1e88e5),
                          fontSize: 30,
                          fontWeight: FontWeight.w900,),
                    ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: TextField(

                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                          hintText: "Nama",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(
                              Icons.person,
                              color: Colors.cyan,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: TextField(
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(
                              Icons.email,
                              color: Colors.cyan,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: TextField(

                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                          hintText: "Nomor Hp",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(
                              Icons.phone,
                              color: Colors.cyan,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 112),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          color: Color(0xff1e88e5)),
                      child: FlatButton(

                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Verification_Page() ));
                        },
                      ),
                    )),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}