import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget{
  final String id;

  const DoctorDetails(this.id);
  @override
  State<StatefulWidget> createState() {
    return DoctorDetailsState(id);
  }
}

class DoctorDetailsState extends State<DoctorDetails>{
  String paramID;
  DoctorDetailsState(this.paramID);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Info : Doctor "+ paramID),
      ),
    );
  }
}