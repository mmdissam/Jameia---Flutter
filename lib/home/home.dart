import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameiaapps/home/home_tab/home_tab.dart';
import 'package:jameiaapps/utilities/constants.dart';

import 'components/app_bar.dart';
import 'home_tab/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;
  final _pageOptions = [
   HomeTab(),
    Center(child: Container(child: Text('Text1'))),
    Center(child: Container(child: Text('Text2'))),
  Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body:  _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        unselectedIconTheme: IconThemeData(color: Color(0XFF9B9B9B), size: 30),
        selectedIconTheme: IconThemeData(color: Color(0XFF6155CC), size: 30),
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.history),title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('')),
        ],
      ),
    );
  }
}
