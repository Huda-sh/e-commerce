import 'package:ecommerce/controller/Auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_bottom_text_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Sign Up",
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
            const CustomTextTitleAuth(text: "Welcome"),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextBodyAuth(
                text:
                    "Sign up with You Email and Password Or Continue With Google"
                        .tr),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.username,
              hintText: "Enter Your Username",
              labelText: "Username",
              iconData: Icons.person_outline,
              // myController: myController
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.email,
              hintText: "Enter Your Email",
              labelText: "Email",
              iconData: Icons.email_outlined,
              // myController: myController
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.phone,
              hintText: "Enter Your Phone Number",
              labelText: "Phone Number",
              iconData: Icons.phone_android_outlined,
              // myController: myController
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextFormAuth(
              myController: controller.password,
              hintText: "Enter Your Password",
              labelText: "Password",
              iconData: Icons.lock_outline_rounded,
              // myController: myController
            ),
            const SizedBox(
              height: 35.0,
            ),
            CustomButtonAuth(
              text: "Sign up",
              onPressed: () {
                controller.goToCheckEmail();
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomBottomTextAauth(
              textOne: "Already Have an Account?  ",
              textTwo: "Sign in",
              onTap: () {
                controller.goToSignin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
