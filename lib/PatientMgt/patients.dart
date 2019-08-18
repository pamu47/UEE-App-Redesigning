import 'package:flutter/material.dart';


class Patients extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PatientState();
  }

}

class PatientState extends State<Patients>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Patients"),
      ),
    );
  }

}