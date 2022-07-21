import 'package:ecommerce/controller/onboarding.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 40,
      ),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 100,
        ),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        child: const Text(
          "Continue",
          style: TextStyle(
              // fontSize: ,
              ),
        ),
      ),
    );
  }
}
