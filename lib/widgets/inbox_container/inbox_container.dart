import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/app_colors.dart';
import 'package:starbucks_clone/constants/assets.dart';

List<String> listTitles = [
  "Whole bean coffees bring Stars!...",
  "Your favourite Starbucks flavors now delivered right to your doorstep",
  "Car Hop - Car Delivery"
];

Widget inboxContainer() {
  return ListView.separated(
    itemCount: listTitles.length,
    separatorBuilder: (context, index) => Divider(),
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "MESSAGE",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[700]),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(listTitles[index], maxLines: 2, overflow: TextOverflow.ellipsis,),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(Assets.logo, fit: BoxFit.fill, width: 100,),
                  )
                ],
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text("Read now"),
              color: AppColors.sbGreen,
              textColor: Colors.white,
              onPressed: () => print("pressed"),
            ),
          ],
        ),
      );
    },
  );
}
