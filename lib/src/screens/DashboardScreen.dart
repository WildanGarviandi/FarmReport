import 'package:farm_report/src/screens/ReportScreen.dart';
import 'package:farm_report/src/widgets/MainAppBar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.line_style)),
                Tab(icon: Icon(Icons.map_rounded)),
                Tab(icon: Icon(Icons.graphic_eq)),
              ],
            ),
            title: const Text('Farm Report'),
          ),
          body: const TabBarView(
            children: [
              ReportScreen(items: List<String>.of("")),
              Icon(Icons.map_rounded),
              Icon(Icons.graphic_eq),
            ],
          ),
        ),
      ),
    );
  }
}
