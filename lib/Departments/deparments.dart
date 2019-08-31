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
  int groupValue;
  bool b = true;

  @override
  void initState() {
    super.initState();
    groupValue = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      groupValue = val;
      if (val == 0) {
        b = true;
      } else if (val == 1) {
        b = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(18, 69, 89, 1),
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
              borderSide: BorderSide(color: Colors.white, width: 4),
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
                      padding: EdgeInsets.all(30.0),
                      children: <Widget>[
                        Container(
                          height: 20,
                        ),
                        CustomTextField("Department Name", "Cardiology/Diagnostic Imaging"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 2.0, left: 2.0),
                              child: Card(
                                elevation: 0.2,
                                child: ListTile(
                                  title: Text(
                                    "Department type.......",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Radio(
                                  activeColor: Colors.green,
                                  value: 0,
                                  groupValue: groupValue,
                                  onChanged: (val) {
                                    setSelectedRadio(val);
                                  },
                                ),
                                new Text(
                                  'Wards',
                                  style: new TextStyle(fontSize: 16.0),
                                ),
                                new Radio(
                                  activeColor: Colors.red,
                                  value: 1,
                                  groupValue: groupValue,
                                  onChanged: (val) {
                                    setSelectedRadio(val);
                                  },
                                ),
                                new Text(
                                  'Clinic',
                                  style: new TextStyle(fontSize: 16.0),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 12.0, right: 8.0, left: 8.0),
                          child: Card(),
                        ),
                        b
                            ? CustomTextField("Number of beds", "25")
                            : Container(),
                        CustomTextField("Description", "Any special information to keep"),
                        ButtonTheme(
                          minWidth: 200.0,
                          child: RaisedButton(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: Text("Done"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
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
