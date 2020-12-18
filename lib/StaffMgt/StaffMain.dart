import 'package:flutter/material.dart';
import 'package:hospital_mgt/Homescreen/appDrawer.dart';
import 'package:hospital_mgt/StaffMgt/StaffDashboard.dart';

class StaffMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<StaffMain> {
  final appTitle = 'Dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Staff Portal"),
          //backgroundColor: Color.fromRGBO(18,69,89,1),
        ),
        body: StaffDashboard(),
        drawer: AppDrawer());
  }
}
