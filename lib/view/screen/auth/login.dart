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
          "Sign In",
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
              height: 20.0,
            ),
            CustomTextTitleAuth(text: "Welcome_Back".tr),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextBodyAuth(
                text:
                    "Sign in with You Email and Password Or Continue With Social Media"
                        .tr),
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
              myController: controller.password,
              hintText: "Enter Your Password",
              labelText: "Password",
              iconData: Icons.lock_outline_rounded,
              // myController: myController
            ),
            const SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: (){
                controller.goToForgetPassword();
              },
              child: const Text(
                "Forgot Password",
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButtonAuth(
              text: "Sign In",
              onPressed: () {},
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomBottomTextAauth(textOne: "Don't Have an Account?  ",
            textTwo: "Sign up",
            onTap: (){
              controller.goToSignup();
            },
            ),
          ],
        ),
      ),
    );
  }
}
