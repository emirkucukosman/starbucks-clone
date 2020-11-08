import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/app_colors.dart';
import 'package:starbucks_clone/locator.dart';
import 'package:starbucks_clone/services/navigation_service.dart';
import 'package:starbucks_clone/routes.dart' as routes;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: AppColors.sbGreen,
        appBarTheme: AppBarTheme(
          color: Colors.white,        
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.black
        ),
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.black, fontSize: 16)
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: routes.generateRoute,
      initialRoute: routes.splash,
    );
  }
}