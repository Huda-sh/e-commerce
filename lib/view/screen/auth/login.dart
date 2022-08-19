import 'package:ecommerce/controller/Auth/login_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_bottom_text_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "9".tr,
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
            const LogoAuth(),
            const SizedBox(
              height: 15.0,
            ),
            CustomTextTitleAuth(text: "10".tr),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextBodyAuth(text: "11".tr),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.email,
              hintText: "12".tr,
              labelText: "18".tr,
              iconData: Icons.email_outlined,
              // myController: myController
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.password,
              hintText: "13".tr,
              labelText: "19".tr,
              iconData: Icons.lock_outline_rounded,
              // myController: myController
            ),
            const SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: Text(
                "14".tr,
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButtonAuth(
              text: "9".tr,
              onPressed: () {},
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomBottomTextAauth(
              textOne: "16".tr,
              textTwo: "17".tr,
              onTap: () {
                controller.goToSignup();
              },
            ),
          ],
        ),
      ),
    );
  }
}
