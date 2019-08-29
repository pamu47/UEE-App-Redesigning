import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';

class Departments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DepartmentState();
  }
}

class DepartmentState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.hospital),
                text: "Add Departments",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.listAlt),
                text: "Department List",
              ),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.blue[900], width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          title: Text('Departments'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  elevation: 8,
                  child: new Container(
                    width: 400,
                    //padding: new EdgeInsets.all(120.0),
                    child: new ListView(
                      padding: EdgeInsets.all(20.0),
                      children: <Widget>[
                        Container(height: 75,),
                        CustomTextField("Department Name", "abc"),
                        CustomTextField("Department Name", "abc")
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
