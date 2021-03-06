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
          backgroundColor: Color.fromRGBO(18,69,89,1),
          title: Text("Dashboard"),
        ),
        body: Dashboard(),
        drawer: AppDrawer());
  }
}
