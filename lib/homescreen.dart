import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dashboard.dart';

// void main() {
//   runApp();
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Flutter Demo",
//       theme: ThemeData(primaryColor: new Color(0xff622F74)),
//       home: Dashboard(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  final appTitle = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => MyApp(),
      },
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child:IconButton(
            icon: Icon(
              FontAwesomeIcons.solidUserCircle,
              size: 35.0,
            ),
            onPressed: () {},
          ),)
        ],
      ),
      body: Dashboard(),
      drawer: Drawer(
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
                leading: Icon(Icons.add_location),
                title: Text('Location'),
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
                leading: Icon(Icons.add_shopping_cart),
                title: Text('Shopping'),
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
                leading: Icon(Icons.add_location),
                title: Text('Location'),
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
                leading: Icon(Icons.add_location),
                title: Text('Location'),
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
                leading: Icon(Icons.add_location),
                title: Text('Location'),
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
      ),
    );
  }
}
