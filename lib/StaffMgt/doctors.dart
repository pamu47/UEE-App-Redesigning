import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/card.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';
import 'package:hospital_mgt/CustomWidgets/datetimePicker.dart';

class Doctors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DoctorsState();
  }
}

class DoctorsState extends State<Doctors> {
  var availability = ['Availability', 'MON', 'TUE','WED','THUR','FRI','SAT','SUN'];
  var Room = [
    'Room No',
    'A1',
    'A2',
    'A3',
    'A4'
  ];
  var subjects = [
    'Anesthesiology and Intensive Care',
    'Cardiology',
    'Dermatology',
    'Intensive Care'
  ];
  var roomType = 'Room No';
  var availableDays = 'Availability';
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
                icon: Icon(FontAwesomeIcons.stethoscope),
                text: "Add Doctor",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.listAlt),
                text: "Doctor List",
              ),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.blue[900], width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          title: Text('Doctors Portal'),
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
                          child: CustomTextField("Doctor Name", "John Doe"),
                        ),
                        CustomTextField("NIC or Passport", "xxxxxxxxxx"),
                        DateTimePicker("Date of birth"),
                        CustomTextField("Phone", "07xxxxxxxx"),
                        CustomTextField("Address", "12/B, Street, City"),
                        CustomTextField("Education", "Oxford"),
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
                                      items: availability.map((String dropdownItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropdownItem,
                                          child: Text(dropdownItem),
                                        );
                                      }).toList(),
                                      //hint: Text('Gender'),
                                      value: availableDays,
                                      onChanged: (String value) {
                                        setState(() {
                                          this.availableDays = value;
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
                                      Room.map((String dropdownItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropdownItem,
                                          child: Text(dropdownItem),
                                        );
                                      }).toList(),
                                      //hint: Text('Gender'),
                                      value: roomType,
                                      onChanged: (String value) {
                                        setState(() {
                                          this.roomType = value;
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
                                                        "Doctor Successfully added")),
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
                  CustomCard("001", "Dr Kamal"),
                  CustomCard("002", "Dr Anil"),
                  CustomCard("003", "Dr Mike"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
