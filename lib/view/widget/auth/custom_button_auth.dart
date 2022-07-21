import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({Key? key, required this.text, this.onPressed})
      : super(key: key);

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      padding:const EdgeInsets.symmetric(vertical: 13.0),
      onPressed: onPressed,
      color: AppColor.primaryColor,
      textColor: Colors.white,
      child: Text(text),
    );
  }
}
