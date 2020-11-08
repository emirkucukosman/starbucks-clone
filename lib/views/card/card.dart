import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/assets.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starbucks Card", style: TextStyle(color: Colors.black),),
        titleSpacing: -30,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Account balance", style: TextStyle(color: Colors.grey, fontSize: 16),),
            Text("32,5 ₺", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown,
              ),
              child: Align(
                alignment: Alignment.center,
                heightFactor: 1.5,
                child: Image.asset(Assets.logo, width: MediaQuery.of(context).size.width / 2,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}