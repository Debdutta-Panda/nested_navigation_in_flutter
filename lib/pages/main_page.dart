import 'package:flutter/material.dart';
import 'package:nested_navigation_in_flutter/pages/page1.dart';
import 'package:nested_navigation_in_flutter/pages/page2.dart';

import '../navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Navigator(
              key: Navigation.mainListNav,
              initialRoute: '/',
              onGenerateRoute: (RouteSettings settings) {

                Widget page;

                switch(settings.name) {
                  case '/':
                    page = Page1();
                    break;
                  case '/mainpage/2':
                    page = Page2();
                    break;

                  default:
                    page = Page1();
                    break;
                }

                return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => page,
                    transitionDuration: const Duration(seconds: 0)
                );
              },
            ),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: (){
                    Navigation.mainListNav.currentState!.pushNamed('/');
                  },
                  child: Text("Page1")
              ),
              TextButton(
                  onPressed: (){
                    Navigation.mainListNav.currentState!.pushNamed('/mainpage/2');
                  },
                  child: Text("Page2")
              )
            ],
          )
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}