import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/auth/signup/check_email.dart';
import 'package:ecommerce/view/screen/auth/Forget_Password/forget_password.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/Forget_Password/reset_password.dart';
import 'package:ecommerce/view/screen/auth/signup/signup.dart';
import 'package:ecommerce/view/screen/auth/Forget_Password/success_reset_password.dart';
import 'package:ecommerce/view/screen/auth/signup/success_signup.dart';
import 'package:ecommerce/view/screen/auth/Forget_Password/verify_code.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  
  //  Auth
  AppRoute.login:(context)=>const Login(),
  AppRoute.signup:(context)=>const Signup(),
  AppRoute.forgetPassword:(context)=>const ForgetPassword(),
  AppRoute.verifyCode:(context)=>const VerifyCode(),
  AppRoute.resetPassword:(context)=>const ResetPassword(),
  AppRoute.successResetPassword:(context)=>const SuccessResetPassword(),
  AppRoute.successSignup:(context)=>const SuccessSignup(),
  AppRoute.chackEmail:(context)=>const CheckEmail(),

  //  onboarding
  AppRoute.onboarding:(context)=>const OnBoarding(),
};
