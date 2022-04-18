import 'package:flutter/material.dart';
import 'package:nested_navigation_in_flutter/pages/home_page.dart';
import 'package:nested_navigation_in_flutter/pages/main_page.dart';

import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Navigation.mainAppNav,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context)=> MyHomePage(),
        "/main": (context)=> MainPage()
      },
    );
  }
}


