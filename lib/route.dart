import 'package:flutter/material.dart';
import 'package:ftracking/home.dart';

const String home = "home";
Route<dynamic> controller(RouteSettings setting) {
  switch (setting.name) {
    case home:
    // return MaterialPageRoute(builder: (context) => new Team(setting.arguments));
    default:
      return MaterialPageRoute(builder: (context) => Home());
  }
}
