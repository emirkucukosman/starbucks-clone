import 'package:flutter/material.dart';

Map<int, Map<String, dynamic>> data = {
  0: { "title": "Star Earn", "subtitle": "Earned Star(s)", "leading": Icon(Icons.stars), "value": "2" },
  1: { "title": "Payment", "subtitle": "mobile HIGHWAY OUTLET", "leading": Icon(Icons.store), "value": "25.50 ₺" },
  2: { "title": "Card Reload", "subtitle": "mobile", "leading": Icon(Icons.credit_card), "value": "50 ₺" }
};

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity",
          style: TextStyle(color: Colors.black),
        ),
        titleSpacing: -30,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text(data[index]["subtitle"]),
            leading: data[index]["leading"],
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(data[index]["value"]),
                Text("10/08/2020 14:21")
              ],
            ),
          );
        },
      ),
    );
  }
}
