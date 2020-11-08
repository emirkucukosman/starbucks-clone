import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/app_colors.dart';
import 'package:starbucks_clone/locator.dart';
import 'package:starbucks_clone/services/navigation_service.dart';
import 'package:starbucks_clone/routes.dart' as routes;
import 'package:starbucks_clone/widgets/placeholder_container/placeholder_container.dart';
import 'package:starbucks_clone/widgets/reward_container/reward_container.dart';

Map<int, Map<String, String>> data = {
  0 : { "title": "Whole bean coffees bring Stars!", "description": "Starbucks Ethiopia 250 g whole bean coffee and Colombia Via earns you 15 stars ! The offer is valid for purchases made at Starbucks stores" },
  1 : { "title": "Your favourite Starbucks flavors are now delivered right to your doorstep!", "description": "We deliver your favourite Starbucks flavors right to your doorstep with Yemeksepeti Vale" }
};

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(
              title: Align(
                child: Text(
                  _titleMessage(),
                  style: TextStyle(color: Colors.black),
                ),
                alignment: Alignment.centerLeft,
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  tooltip: "Inbox",
                  onPressed: () =>
                      locator<NavigationService>().navigateTo(routes.inbox),
                ),
                IconButton(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.grey,
                  ),
                  tooltip: "Activity",
                  onPressed: () =>
                      locator<NavigationService>().navigateTo(routes.activity),
                )
              ],
              titleSpacing: -30,
              backgroundColor: Colors.white,
            ),
            body: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    rewardContainer(),
                    placeholderContainer(context, data[0]["title"], data[0]["description"]),
                    placeholderContainer(context, data[1]["title"], data[1]["description"]),
                  ],
                );
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: RaisedButton(
                color: AppColors.sbGreen,
                onPressed: () => print("pressed"),
                child: Text("Add money", style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
        onWillPop: () async => false);
  }

  _titleMessage() {
    int hour = DateTime.now().hour;
    if (hour < 12 && hour > 4) {
      return "Good Morning";
    } else if (hour < 18 && hour > 12) {
      return "Good Afternoon";
    } else if (hour > 18 && hour < 21) {
      return "Good Evening";
    } else {
      return "Good Night";
    }
  }
}
