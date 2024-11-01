import 'package:flutter/material.dart';
import 'package:project1/view/home/sign-up/signUp.dart';

class AppNavigator {
  static void push(Function? customMethod) {}
  static void pop(BuildContext context, Function? customMethod) {
    if (customMethod != null) {
      customMethod();
    }
    Navigator.pop(context);
  }

  static void replace(
    BuildContext context,
    Widget newPage,
    Function? customMethod,
  ) {
    if (customMethod != null) {
      customMethod();
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => newPage));
  }
}
