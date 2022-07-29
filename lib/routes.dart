import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/auth/forget_password.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/reset_password.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/verify_code.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  
  //  Auth
  AppRoute.login:(context)=>const Login(),
  AppRoute.signup:(context)=>const Signup(),
  AppRoute.forgetPassword:(context)=>const ForgetPassword(),
  AppRoute.verifyCode:(context)=>const VerifyCode(),
  AppRoute.resetPassword:(context)=>const ResetPassword(),

  //  onboarding
  AppRoute.onboarding:(context)=>const OnBoarding(),
};
