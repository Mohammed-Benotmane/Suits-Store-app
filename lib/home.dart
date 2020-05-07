import 'package:flutter/material.dart';
import 'package:profiledarktheme/main.dart';
import 'package:profiledarktheme/profile.dart';
import 'package:profiledarktheme/store.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color lightBrown = Color(0xFFdeb887);
  Color veryLightBrown = Color(0xFFfff5ee);
  Color darkBrown = Color(0xFF743a34);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Store(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: lightBrown,
        unselectedItemColor:  veryLightBrown,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text('Store'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: darkBrown,
        onTap: _onItemTapped,
      ),
    );
  }
}
