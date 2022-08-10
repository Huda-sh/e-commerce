import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../controller/Auth/verifycode_controller.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Verification Code",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.gray),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
        child: ListView(
          children: [
            const CustomTextTitleAuth(text: "Verify Code"),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextBodyAuth(
                text:
                    //TODO: make email dynamic
                    "Please Enter The Digit Code Sent To wael@gmail.com".tr),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(15.0),
              numberOfFields: 5,
              borderColor:const Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              }, // end onSubmit
            ),
            const SizedBox(
              height: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
