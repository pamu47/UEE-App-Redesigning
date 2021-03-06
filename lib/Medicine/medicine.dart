import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/card.dart';
import 'package:hospital_mgt/CustomWidgets/customListItemPayroll.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';
import 'package:hospital_mgt/CustomWidgets/datetimePicker.dart';

class Medicine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MedicineState();
  }
}

class MedicineState extends State<Medicine> {
  var employeeType = [
    'Distributor',
    'Softcare International',
    'Hemas (pvt) LTD',
    'Mega pharma'
  ];

  var sortEmployee = [
    'Sort according to designation',
    'Softcare International',
    'Hemas (pvt) LTD',
    'Mega pharma'
  ];

  var status = ['Type', 'Liquid', 'Solid'];
  var currentStatus = 'Type';
  var currentEmployee = 'Distributor';
  var currentSortItem = 'Sort according to designation';

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
                icon: Icon(FontAwesomeIcons.pills),
                text: "Add Medicine",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.listAlt),
                text: "Medicine List",
              ),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white, width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          title: Text('Medicine'),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
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
                                margin:
                                    EdgeInsets.only(left: 12.0, right: 10.0),
                                child: DropdownButton<String>(
                                  items:
                                      employeeType.map((String dropdownItem) {
                                    return DropdownMenuItem<String>(
                                      value: dropdownItem,
                                      child: Text(dropdownItem),
                                    );
                                  }).toList(),
                                  //hint: Text('Gender'),
                                  value: currentEmployee,
                                  onChanged: (String value) {
                                    setState(() {
                                      this.currentEmployee = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomTextField("Medicine Name", "Cetirizine"),
                        CustomTextField("Price per unit", "Rs.____"),
                        CustomTextField("Quantity", "100"),
                        DateTimePicker("Purchase Date"),
                        Container(
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
                              margin: EdgeInsets.only(left: 12.0, right: 10.0),
                              child: DropdownButton<String>(
                                items: status.map((String dropdownItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropdownItem,
                                    child: Text(dropdownItem),
                                  );
                                }).toList(),
                                //hint: Text('Gender'),
                                value: currentStatus,
                                onChanged: (String value) {
                                  setState(() {
                                    this.currentStatus = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 200.0,
                          child: RaisedButton(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: Text("Done"),
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
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "Stock Successfully created")),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 10, right: 10, bottom: 8.0),
                    child: DropdownButton<String>(
                      items: sortEmployee.map((String dropdownItem) {
                        return DropdownMenuItem<String>(
                          value: dropdownItem,
                          child: Text(dropdownItem),
                        );
                      }).toList(),
                      //hint: Text('Gender'),
                      value: currentSortItem,
                      onChanged: (String value) {
                        setState(() {
                          this.currentSortItem = value;
                        });
                      },
                    ),
                  ),
                  CustomCard("100", "Cetrizine"),
                  CustomCard("50", "Ventolin"),
                  CustomCard("30", "Panadol"),
                  CustomCard("120", "Paracitomol"),
                  CustomCard("150", "Piriton"),
                  CustomCard("60", "Azee"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
