import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/app_colors.dart';

Widget rewardContainer() {
  return Container(
    color: Colors.brown[900],
    height: 250,
    child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "STARBUCKS REWARDS",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Transform.scale(
                scale: 1.5,
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    value: 0.5,
                    strokeWidth: 8,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "19",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.star, color: Colors.yellow[900]),
                      ],
                    ),
                    Text(
                      "star balance",
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.local_drink,
                        color: AppColors.sbGreen,
                      ),
                    ],
                  ),
                  Text(
                    "reward drinks",
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "4/10",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            children: <Widget>[
              Spacer(),
              FlatButton(
                onPressed: () => print("pressed"),
                child: Text(
                  "Reward details",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
