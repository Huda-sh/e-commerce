import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkCode();
  goToSuccessSignup();
}

class CheckEmailControllerImp extends CheckEmailController {

  late String verifyCode;

  @override
  checkCode() {}


  @override
  goToSuccessSignup() {
    Get.offNamed(AppRoute.successSignup);
  }
}
