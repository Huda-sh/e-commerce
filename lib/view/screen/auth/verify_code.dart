import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: inject dependency
    // ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
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
                    "Please Enter The Digit Code Sent To wael@gmail.com"
                        .tr),
            const SizedBox(
              height: 20.0,
            ),
            //TODO: create new Imp
            // CustomTextFormAuth(
            //   myController: controller.email,
            //   hintText: "Enter Your Email",
            //   labelText: "Email",
            //   iconData: Icons.email_outlined,
            // ),
            const SizedBox(
              height: 35.0,
            ),
            CustomButtonAuth(
              text: "Check",
              onPressed: () {},
            ),
            
          ],
        ),
      ),
    );
  }
}
