import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/PatientMgt/patientDetails.dart';

class CustomCard extends StatefulWidget {
  final String category, id;

  const CustomCard(this.id, this.category);

  @override
  State<StatefulWidget> createState() {
    return CustomCardState(id, category);
  }
}

class CustomCardState extends State<CustomCard> {
  String paramID, paramCategory;

  CustomCardState(this.paramID, this.paramCategory);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(
          paramCategory + " " + paramID,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onTap: () {
           Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PatientDetails()));
        },
        trailing: ButtonTheme(
          padding: EdgeInsets.only(left: 50),
          minWidth: 20.0,
          buttonColor: Colors.transparent,
          child: RaisedButton(
            elevation: 0,
            child: Icon(
              FontAwesomeIcons.trashAlt,
              color: Colors.red[800],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        title: Text("Warning!"),
                        content: Container(
                          height: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.center,
                                  child: Text("You are about to remove " +
                                      paramCategory +
                                      " : " +
                                      paramID)),
                              ButtonBar(
                                children: <Widget>[
                                  RaisedButton(
                                    color: Colors.white10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    child: Text("Cancel"),
                                    onPressed: () {Navigator.pop(context);},
                                  ),
                                  RaisedButton(
                                    color: Colors.red[700],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    child: Text("Delete"),
                                    onPressed: () {},
                                  ),
                                ],
                              )
                            ],
                          ),
                        ));
                  });
            },
          ),
        ),
      ),
    );
  }
}
