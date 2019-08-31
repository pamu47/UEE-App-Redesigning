import 'package:flutter/material.dart';

class PatientDetails extends StatefulWidget{
  final String id;

  const PatientDetails(this.id);
  @override
  State<StatefulWidget> createState() {
    return PatientDetailsState(id);
  }
} 

class PatientDetailsState extends State<PatientDetails>{
  String paramID;
  PatientDetailsState(this.paramID);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Info : Patient "+ paramID),
      ),
    );
  }
}