import 'package:ecommerce/controller/Auth/reset_password_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Reset Password",
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
            const CustomTextTitleAuth(text: "New Password"),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextBodyAuth(
                text:
                    "Please enter new password"
                        .tr),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.password,
              hintText: "Enter Your New Password",
              labelText: "Password",
              iconData: Icons.lock_outline_rounded,
              // myController: myController
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.rePassword,
              hintText: "Re-enter Your New Password",
              labelText: "Password",
              iconData: Icons.lock_outline_rounded,
              // myController: myController
            ),
            const SizedBox(
              height: 35.0,
            ),
            CustomButtonAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
