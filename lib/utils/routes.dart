import 'package:flutter/cupertino.dart';
import 'package:intro_screen/screens/intro/intro.dart';
import 'package:intro_screen/screens/intro/intro2.dart';
import 'package:intro_screen/screens/intro/intro3.dart';


import '../screens/home_screen/page/home_screen.dart';
import 'app_routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => HomePage(),
  AppRoutes().introScreen1: (context) => IntroScreen1(),
  AppRoutes().introScreen2: (context) => IntroScreen2(),
  AppRoutes().introScreen3: (context) => IntroScreen3(),
};
