import 'package:flutter/material.dart';
import 'package:hospital_mgt/Homescreen/appDrawer.dart';

import 'dashboard.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyApp> {
  final appTitle = 'Dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Dashboard"),
          backgroundColor: Color.fromRGBO(11, 83, 81,1),
        ),
        body: Dashboard(),
        drawer: AppDrawer());
  }
}
