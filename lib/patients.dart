import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
        title: Text("Patients"),
      ),
    );
  }

}