import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';
import 'package:hospital_mgt/CustomWidgets/datetimePicker.dart';

class Patients extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PatientState();
  }
}

class PatientState extends State<Patients> {
  var gender = ['Gender', 'male', 'female'];
  var bloodtypes = [
    'Blood Type',
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-'
  ];
  var currentBloodtype = 'Blood Type';
  var currentItemSelected = 'Gender';
  var dateController = TextEditingController();

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
                icon: Icon(FontAwesomeIcons.procedures),
                text: "Add Patient",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.listAlt),
                text: "Patient List",
              ),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.blue[900], width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          title: Text('Patients'),
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
                      padding: EdgeInsets.all(8.0),
                      children: <Widget>[
                        CustomTextField("Patient Name", "John Doe"),
                        CustomTextField("NIC or Passport", "xxxxxxxxxx"),
                        DateTimePicker(),
                        CustomTextField("Phone", "07xxxxxxxx"),
                        CustomTextField("Address", "12/B, Street, City"),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: 12.0, right: 8.0, left: 8.0),
                                width: double.infinity,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(5.0),
                                  elevation: 5.0,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 12.0, right: 10.0),
                                    child: DropdownButton<String>(
                                      items: gender.map((String dropdownItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropdownItem,
                                          child: Text(dropdownItem),
                                        );
                                      }).toList(),
                                      //hint: Text('Gender'),
                                      value: currentItemSelected,
                                      onChanged: (String value) {
                                        setState(() {
                                          this.currentItemSelected = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: 12.0, right: 8.0, left: 8.0),
                                width: double.infinity,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.solid),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(5.0),
                                  elevation: 5.0,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 12.0, right: 10.0),
                                    child: DropdownButton<String>(
                                      items:
                                          bloodtypes.map((String dropdownItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropdownItem,
                                          child: Text(dropdownItem),
                                        );
                                      }).toList(),
                                      //hint: Text('Gender'),
                                      value: currentBloodtype,
                                      onChanged: (String value) {
                                        setState(() {
                                          this.currentBloodtype = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Material(
                          child: Container(
                            child: RaisedButton(
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Text("Save"),
                              onPressed: () {},
                            ),
                          ),
                        )
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
