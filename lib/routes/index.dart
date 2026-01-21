import 'package:flutter/material.dart';
import 'package:one/pages/main/index.dart';
import 'package:one/pages/login/index.dart';

Widget getRootWidget() {
  return MaterialApp(
    initialRoute: "/",
    routes: getRootroutes(),
    );
}

Map<String, Widget Function(BuildContext)> getRootroutes() {
  return {
    "/":(context)=> MainPage(),
    "/login":(context)=> LoginPage(),
  };
}
