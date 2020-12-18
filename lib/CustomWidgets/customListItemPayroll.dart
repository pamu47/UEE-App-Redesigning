import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/PatientMgt/patientDetails.dart';

class CustomCardPayroll extends StatefulWidget {
  final String userType, paymentStatus;

  const CustomCardPayroll(this.userType, this.paymentStatus);

  @override
  State<StatefulWidget> createState() {
    return CustomCardPayrollState(userType, paymentStatus);
  }
}

class CustomCardPayrollState extends State<CustomCardPayroll> {
  String paramUser, paramStatus;
  bool res;

  CustomCardPayrollState(this.paramUser, this.paramStatus);

  setPaymentStatus(String val) {
    setState(() {
      paramStatus = val;
      if (paramStatus == 'paid') {
        res = true;
      } else if (paramStatus == 'unpaid') {
        res = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    res = true;
    setPaymentStatus(this.paramStatus);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(
          "User__ : " + paramUser,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    title: Text("Alert!"),
                    content: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[],
                      ),
                    ));
              });
        },
        trailing: ButtonTheme(
          padding: EdgeInsets.only(left: 50),
          minWidth: 20.0,
          buttonColor: Colors.transparent,
          child: FlatButton(
            highlightColor: Colors.transparent,
            child: res
                ? Text("paid",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.green))
                : Text("unpaid",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
