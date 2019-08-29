import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
class DateTimePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DateTimeState();
  }
}

class DateTimeState extends State<DateTimePicker> {
  DateTime _date = DateTime.now();
  var dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1990),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
        dateController.text = _date.year.toString() +
            ' - ' +
            _date.month.toString() +
            ' - ' +
            _date.day.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0, right: 8.0, left: 8.0),
            child: Material(
              borderRadius: BorderRadius.circular(5.0),
              elevation: 5.0,
              child: TextField(
                enabled: false,
                controller: dateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date of birth',
                ),
                style: new TextStyle(
                fontSize: 20.0, height: 0.6, color: Colors.black)
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right:8.0,bottom: 8.0),
              
              child: Container(
              
                child: FlatButton(
          child: Icon(FontAwesomeIcons.calendarAlt),
          onPressed: () {
                _selectDate(context);
          },
        ),
              ),
            ))
      ],
    );
  }
}
