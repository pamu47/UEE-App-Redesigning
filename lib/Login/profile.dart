import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 69, 89, 1),
        title: Text("Edit Profile"),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/man.png'),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "First Name",
                        textAlign: TextAlign.left,
                      )),
                  Container(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: TextFormField(
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          fontFamily: 'Ubuntu'),
                      initialValue: "Pamuditha",
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Last Name",
                        textAlign: TextAlign.left,
                      )),
                  Container(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: TextFormField(
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          fontFamily: 'Ubuntu'),
                      initialValue: "Hewawelengoda",
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Email",
                        textAlign: TextAlign.left,
                      )),
                  Container(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: TextFormField(
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          fontFamily: 'Ubuntu'),
                      initialValue: "pamudithamaduranga@gmail.com",
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Last login",
                        textAlign: TextAlign.left,
                      )),
                  Container(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: TextFormField(
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          fontFamily: 'Ubuntu'),
                      initialValue: "30/08/2019 at 17.30.45",
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
