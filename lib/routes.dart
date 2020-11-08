import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_clone/views/activity/activity.dart';
import 'package:starbucks_clone/views/inbox/inbox.dart';
import 'package:starbucks_clone/views/root/root.dart';
import 'package:starbucks_clone/views/splash/splash.dart';

const String splash = "/splash";
const String inbox = "/inbox";
const String activity = "/activity";
const String root = "/root";

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case root:
      return MaterialPageRoute(builder: (context) => RootScreen());
    case splash:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case inbox:
      return MaterialPageRoute(builder: (context) => InboxScreen());
    case activity:
      return MaterialPageRoute(builder: (context) => ActivityScreen());
    default:
      return MaterialPageRoute(builder: (context) => RootScreen());
  }
}