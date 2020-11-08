import 'dart:async';

import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/app_colors.dart';
import 'package:starbucks_clone/constants/assets.dart';
import 'package:starbucks_clone/locator.dart';
import 'package:starbucks_clone/services/navigation_service.dart';
import 'package:starbucks_clone/routes.dart' as routes;

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sbGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(Assets.logo, fit: BoxFit.contain, width: MediaQuery.of(context).size.width / 2,),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  startTimer() {
    final duration = Duration(seconds: 2);
    return Timer(duration, navigate);
  }

  navigate() {
    locator<NavigationService>().navigateTo(routes.root);
  }
}