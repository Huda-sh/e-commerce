import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  const CustomTextFormAuth(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
       this.myController})
      : super(key: key);

  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14.0),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labelText)),
        suffixIcon: Icon(iconData),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
