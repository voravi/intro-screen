import 'package:flutter/material.dart';
import 'package:intro_screen/utils/app_routes.dart';
import 'package:intro_screen/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  bool isSplashScreenVisited = prefs.getBool("isSplashScreenVisited") ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Intro Screen",
      //home: HomePage(),
      initialRoute: (isSplashScreenVisited == true)
          ? AppRoutes().homePage
          : AppRoutes().introScreen1,
      routes: routes,
    ),
  );
}
