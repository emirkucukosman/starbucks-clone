import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/app_colors.dart';


Widget bottomNavigation(int index, Function onTapped) {
  return BottomNavigationBar(
    currentIndex: index,
    onTap: onTapped,
    selectedItemColor: AppColors.sbGreen,
    unselectedItemColor: Colors.grey[400],
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.star),
        title: Text("Home"),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.local_drink), title: Text("Menu")),
      BottomNavigationBarItem(
          icon: Icon(Icons.credit_card), title: Text("Starbucks Card")),
      BottomNavigationBarItem(icon: Icon(Icons.store), title: Text("Stores")),
    ],
  );
}
