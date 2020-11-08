import 'package:flutter/material.dart';
import 'package:starbucks_clone/views/card/card.dart';
import 'package:starbucks_clone/views/home/home.dart';
import 'package:starbucks_clone/views/menu/menu.dart';
import 'package:starbucks_clone/widgets/bottom_navigation/bottom_navigation.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MenuScreen(),
    CardScreen(),
    Text("Stores Screen\nThere is going to be a map here but I will add it later :)", textAlign: TextAlign.center,),
  ];

  _onItemTapped(int index) {
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
      bottomNavigationBar: bottomNavigation(_selectedIndex, _onItemTapped),
    );
  }
}