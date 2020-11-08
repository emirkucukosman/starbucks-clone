import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/assets.dart';

Widget placeholderContainer(BuildContext context, String title, String description) {
  return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        Image.asset(
          Assets.logo,
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width / 2,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              title,
              style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
            ),
          )
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                description,
                style: TextStyle(color: Colors.grey),
              ),
            )),
      ],
    ),
  );
}
