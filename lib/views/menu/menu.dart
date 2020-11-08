import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/assets.dart';

class MenuScreen extends StatelessWidget {
  final List<String> titles = [
    "- Drinks",
    "Espresso Drinks",
    "Brewed Coffee",
    "Turkish Coffee",
    "Refresha",
    "Hot Teavana Tea",
    "Teavana Tea Latte",
    "Iced Teavana Tea",
    "Frappucino Blended Beverage",
    "Hot Chocolates",
    "Other Drinks",
    "Bottled Waters",
    "- Foods",
    "Baked Products",
    "Sandwiches",
    "Salad And Parfaits",
    "Snacks",
    "- Coffee At Home",
    "Coffee Beans",
    "VIA"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu",
          style: TextStyle(color: Colors.black),
        ),
        titleSpacing: -30,
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          if (titles[index].startsWith("-")) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                titles[index].split("-")[1],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            );
          }
          return InkWell(
            onTap: () => print("tapped"),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  Assets.logo,
                  fit: BoxFit.fill,
                  width: 50,
                ),
              ),
              title: Text(titles[index]),
            ),
          );
        },
      ),
    );
  }
}
