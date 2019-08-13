import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/dashboard.dart';
import 'package:hospital_mgt/homescreen.dart';
import 'package:hospital_mgt/patients.dart';
class AppDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.account_circle, size: 75.0),
              accountEmail: Text("pamuditha@gmail.com"),
              accountName: Text("Pamuditha"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  //Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(FontAwesomeIcons.hospital),
                title: Text('Departments'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(FontAwesomeIcons.userNurse),
                title: Text('Staff'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(FontAwesomeIcons.procedures),
                title: Text('Patients'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Patients()));
                  //Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications_active),
                title: Text('Noticeboard'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      );
  }

}