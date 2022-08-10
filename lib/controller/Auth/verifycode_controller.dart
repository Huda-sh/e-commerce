import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

  late String verifyCode;

  @override
  checkCode() {}


  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }
}
