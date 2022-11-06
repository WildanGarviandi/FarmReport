import 'package:farm_report/src/home/home.dart';
import 'package:farm_report/src/screens/DashboardScreen.dart';
import 'package:farm_report/src/search.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (ctx) => const DashboardScreen(),
        //"/adv-home": (ctx) => AdvandedMainExample(),
        // "/nav": (ctx) => MyHomeNavigationPage(
        //       map: Container(),
        //     ),
        "/second": (ctx) => Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(ctx, "/home");
                  },
                  child: Text("another page"),
                ),
              ),
            ),
        "/picker-result": (ctx) => LocationAppExample(),
        "/search": (ctx) => SearchPage(),
      },
    );
  }
}
