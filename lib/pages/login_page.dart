import 'package:flutter/material.dart';

class Login_page extends StatefulWidget{
  @override
  LoginState createState()=> LoginState();
}
class LoginState extends State<Login_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     body: SafeArea(
         child: Column(
           children: <Widget>[
             Container(
               child: Text('Login',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w900),) ,
             ),
             
           ],
         )
     ),
    );
  }
}
