import 'package:flutter/material.dart';
import 'package:hospital_mgt/Homescreen/appDrawer.dart';
import 'package:hospital_mgt/StaffMgt/StaffDashboard.dart';
import 'package:hospital_mgt/Messages/sendMessage.dart';

class MessagesMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MessagesMain> {
  final appTitle = 'Messages';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Messages"),
          //backgroundColor: Color.fromRGBO(18,69,89,1),
        ),
        body: MessageDashboard(),
        drawer: AppDrawer());
  }
}
