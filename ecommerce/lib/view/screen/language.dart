import 'dart:ui';

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/localization/change_locale.dart';
import 'package:ecommerce/view/widget/onboarding/language/custom_lang_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose_Language".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 20),
            LanguageButton(
              textbutton: "ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.offAllNamed(AppRoute.onboarding);
              },
            ),
            LanguageButton(
              textbutton: "en",
              onPressed: () {
                controller.changeLang("en");
                Get.offAllNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
