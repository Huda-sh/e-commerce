import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  Login();
  goToSignup();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  Login() {}

  @override
  goToSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
