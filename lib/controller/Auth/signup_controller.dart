import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  Signup();
  goToSignin();
}

class SignupControllerImp extends SignupController {
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;

  @override
  Signup() {}


  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }
  
  @override
  goToSignin() {
    Get.offNamed(AppRoute.login);
  }
}
