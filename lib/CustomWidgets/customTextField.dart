import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String label, hint;

  CustomTextField(this.label, this.hint);

  @override
  State<StatefulWidget> createState() {
    return CustomTextFieldState(label, hint);
  }
}

class CustomTextFieldState extends State<CustomTextField> {
  String labelText, hintText;

  CustomTextFieldState(this.labelText, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, right: 8.0, left: 8.0),
      child: Material(
        borderRadius: BorderRadius.circular(5.0),
        elevation: 5.0,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hintText,
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}
