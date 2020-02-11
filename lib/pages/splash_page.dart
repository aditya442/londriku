import 'package:flutter/material.dart';
import 'dart:async';
import 'package:laundryku/pages/onboarding_page.dart';
import 'package:laundryku/pages/login_page.dart';
import 'package:laundryku/utils/utils.dart';
import 'package:laundryku/Localbindings.dart';
import 'package:laundryku/pages/registrasi_page.dart';

//
//class SplashScreen extends StatefulWidget {
//  @override
//  _SplashScreenState createState() => new _SplashScreenState();
//}
//class _SplashScreenState extends State<SplashScreen> {
//
//  startTime() async {
//    var _duration = new Duration(seconds: 4);
//    return new Timer(_duration, navigationPage);
//  }
//  void navigationPage()async {
//
//    String isOnBoard = await LocalStorage.sharedInstance.readValue(Constants.isOnBoard);
//    String userId = await LocalStorage.sharedInstance.readValue(Constants.userId);
//    String namaUser = await LocalStorage.sharedInstance.readValue(Constants.namaUser);
//    String tipeUser = await LocalStorage.sharedInstance.readValue(Constants.tipeUser);
//    String emailUser = await LocalStorage.sharedInstance.readValue(Constants.emailUser);
//
//    print("isOnBoard  $isOnBoard");
//    print("userId  $userId");
//    print("tipeUser  $tipeUser");
//    print("namaUser  $namaUser");
//    print("EmailUser  $emailUser");
//
//    if(isOnBoard ==null || isOnBoard == "0"){
//      //Navigate to OnBoarding Screen.
//      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Intro_Page()));
//    }else{
//      if(userId ==null || userId == "0" || userId == "") {
//        Navigator.pushReplacement(
//            context, MaterialPageRoute(builder: (context) => Login_page()));
//      }
//    }
//  }
//  @override
//  void initState() {
//    super.initState();
//    startTime();
//    navigationPage();
//  }
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      backgroundColor: Colors.white,
//      body: Stack(
//
//        fit: StackFit.expand,
//        children: <Widget>[
//          new Column(
//            mainAxisAlignment: MainAxisAlignment.end,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              Padding(
//                padding: EdgeInsets.only(top: 50),
//                child: new Image.asset(
//                  "assets/images/flutter.png",
//                  height:200,
//                  width: 200,
//                  fit: BoxFit.scaleDown,
//                ),
//              )
//            ],
//          ),
//          new Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              new Image.asset(
//                "assets/images/logo.png",
//                width:  250,
//                height:  250,
//              ),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Screen size;

  /*
  @override
  void initState() {
    super.initState();
    navigateFromSplash();
  }
*/

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:5), () {
      navigateFromSplash();
    });
  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
        body: Center(
            child: Container(
                child:   new Image.asset(
               "assets/images/logo.jpg",
                width:  350,
                height:  400,
             ),
            )
        )
    );
  }



  Future navigateFromSplash () async {

    String isOnBoard = await LocalStorage.sharedInstance.readValue(Constants.isOnBoard);
    String userId = await LocalStorage.sharedInstance.readValue(Constants.userId);

    print("isOnBoard  $isOnBoard");


    if(isOnBoard ==null || isOnBoard == "0"){
      //Navigate to OnBoarding Screen.
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Intro_Page()));
    }else{
      if(userId ==null || userId == "0" || userId == "") {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login_page()));
      }
    }
  }
}