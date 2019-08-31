import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/Departments/deparments.dart';
import 'package:hospital_mgt/FinanceMgt/payroll.dart';
import 'package:hospital_mgt/Login/profile.dart';
import 'package:hospital_mgt/PatientMgt/patients.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: InkWell(
              child: Icon(Icons.account_circle, size: 75.0,color: Colors.white,),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            accountEmail: Text("pamuditha@gmail.com"),
            accountName: Text("Pamuditha"),
            decoration: BoxDecoration(
              color: Color.fromRGBO(18, 69, 89, 1),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.hospital),
              title: Text('Departments'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Departments()));
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
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.fileInvoiceDollar),
              title: Text('Payroll'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Payroll()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
