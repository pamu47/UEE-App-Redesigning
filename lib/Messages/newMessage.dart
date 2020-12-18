import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/CustomWidgets/card.dart';
import 'package:hospital_mgt/CustomWidgets/customTextField.dart';
import 'package:hospital_mgt/CustomWidgets/datetimePicker.dart';
import 'package:url_launcher/url_launcher.dart';

class NewMessage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewMessageState();
  }
}

class NewMessageState extends State<NewMessage> {
  var gender = ['Gender', 'male', 'female'];
  var bloodtypes = [
    'Blood Type',
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-'
  ];
  var currentBloodtype = 'Blood Type';
  var currentItemSelected = 'Gender';
  var dateController = TextEditingController();

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
                icon: Icon(FontAwesomeIcons.procedures),
                text: "Add Patient",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.listAlt),
                text: "Patient List",
              ),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.blue[900], width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          title: Text('Compose Your Message'),
        ),
        body: new Column(
          children: <Widget>[
            new ListTile(
              leading: const Icon(Icons.person),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.phone),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.email),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            new IconButton(
              icon: const Icon(Icons.save),
              onPressed: LaunchEmail('harithanasa@gmail.com', 'ABC Hospital Management System Internal Email','')

            )

          ],
        ),
      ),
    );
  }

  LaunchEmail(String toMailId, String subject,String body) async{

    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'could not launch url $url';
    }

  }


}
