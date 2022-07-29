import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomBottomTextAauth extends StatelessWidget {
  const CustomBottomTextAauth(
      {Key? key, required this.textOne, required this.textTwo, this.onTap})
      : super(key: key);

  final String textOne;
  final String textTwo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        InkWell(
          onTap: onTap,
          child: Text(
            textTwo,
            style: const TextStyle(
                color: AppColor.primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
