import 'package:ecommerce/controller/Auth/success_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller = SuccessSignupControllerImp();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "38".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.gray),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            CustomTextBodyAuth(
                text:
                    "28".tr),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "31".tr,
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
