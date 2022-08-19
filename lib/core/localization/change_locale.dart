import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/theme.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData theme = themeEnglish;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    theme = langCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(theme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      theme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      theme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      theme = language?.languageCode == "en" ? themeEnglish : themeArabic;
    }
    super.onInit();
  }
}
