import 'package:flutter/material.dart';
import 'package:laundryku/pages/navigation/home_page.dart';
import 'package:laundryku/pages/navigation/transaksi_page.dart';
import 'package:laundryku/pages/navigation/profile_page.dart';

class NavPage extends StatefulWidget {
  NavPage() : super();
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int currentI = 0;
  List<Widget> tabs = [
    Home_page(),
    Transaksi_page(),
    Profile_page(),

  ];

  onTapped(int index) {
    setState(() {
      currentI = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[currentI],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentI,
        fixedColor:  Colors.orangeAccent.shade700,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            title: Text('Transaksi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          )
        ],
      ),
    );
  }
}

