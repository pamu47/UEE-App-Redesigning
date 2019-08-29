import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/card.dart';
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
          backgroundColor: Color.fromRGBO(18, 69, 89, 1),
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
                padding: EdgeInsets.all(10.0),
                child: Card(
                  elevation: 8,
                  child: new Container(
                    width: 450,
                    //padding: new EdgeInsets.all(120.0),
                    child: new ListView(
                      padding: EdgeInsets.all(8.0),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: CustomTextField("Patient Name", "John Doe"),
                        ),
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
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Text("Save"),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          title: Text("Success!"),
                                          content: Container(
                                            height: 120,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "Patient Successfully added")),
                                                ButtonTheme(
                                                  minWidth: 200.0,
                                                  child: RaisedButton(
                                                    color: Colors.green,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8.0))),
                                                    child: Text("Done"),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ));
                                    });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //2nd Tab. PATIENTS LIST

            Container(
              padding: EdgeInsets.all(3.0),
              child: ListView(
                children: <Widget>[
                  CustomCard("001", "Patient"),
                  CustomCard("002", "Patient"),
                  CustomCard("003", "Patient"),
                  CustomCard("004", "Patient"),
                  CustomCard("005", "Patient"),
                  CustomCard("006", "Patient"),
                  CustomCard("007", "Patient"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
