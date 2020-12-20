import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final tabs = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[500],
        selectedFontSize: 20,
        unselectedFontSize: 15,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "Tasks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Programmers",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
