import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';

class Payroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PayrollState();
  }
}

class PayrollState extends State<Payroll> {
  var employeeType = [
    'Employee Type',
    'Doctor',
    'Nurse',
    'Clinical Assistant',
    'Ward clerk',
    'Laboratory Technologist'
  ];
  var currentEmployee = 'Employee Type';

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
                icon: Icon(FontAwesomeIcons.fileInvoiceDollar),
                text: "Add a Payroll",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.listAlt),
                text: "Payroll List",
              ),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white, width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          title: Text('Payroll'),
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
                                items: employeeType.map((String dropdownItem) {
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
                        CustomTextField("Name", "John Doe"),
                        CustomTextField("Allowance", "Rs.____"),
                        
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
