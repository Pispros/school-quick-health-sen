import 'package:flutter/material.dart';
import 'package:health_sen/screens/Auth.dart';
import 'package:health_sen/screens/Home.dart';

Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
  return {
    "": (context) => AuthScreen(),
    "home": (context) => HomeScreen(),
  };
}
