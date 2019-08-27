import 'package:flutter/material.dart';

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
              ),
            ),
          ),
        ),
        Expanded(
            child: FlatButton(
          child: Icon(Icons.calendar_today),
          onPressed: () {
            _selectDate(context);
          },
        ))
      ],
    );
  }
}
