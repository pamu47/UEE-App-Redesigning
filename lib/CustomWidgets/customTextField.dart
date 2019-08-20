import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  Icon fieldIcon;
  String hintText;

  CustomTextField(this.fieldIcon, this.hintText);

  @override
  State<StatefulWidget> createState() {
    return CustomTextFieldState(fieldIcon, hintText);
  }
}

class CustomTextFieldState extends State<CustomTextField> {
  Icon icon;
  String hint;
  CustomTextFieldState(this.icon, this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.deepOrange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: icon
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                width: 200,
                height: 58,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                        fillColor: Colors.white,
                        filled: true),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
