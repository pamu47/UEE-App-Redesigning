import 'package:flutter/material.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';
import 'package:hospital_mgt/Homescreen/appDrawer.dart';
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
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.redAccent,
        ),
        drawer: AppDrawer(),
        body: ListView(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  child: Container(
                      width: 400,
                      height: 400,
                      child: Opacity(
                        opacity: 0.5,
                        child: Image.asset('images/hospital.png'),
                      )),
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(
                          height: 160,
                        ),
                        CustomTextField(
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            "Username"),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            "Password"),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
                            },
                            color: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text("Forgot password?",
                              style: TextStyle(color: Colors.black54)),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
