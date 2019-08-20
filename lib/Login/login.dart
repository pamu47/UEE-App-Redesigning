import 'package:flutter/material.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';
import 'package:hospital_mgt/Homescreen/homescreen.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/heart.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                CustomTextField(
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    "Username"),
                CustomTextField(
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    "Password"),
                Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
