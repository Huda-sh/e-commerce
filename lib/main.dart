import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/change_locale.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController localeController=Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: localeController.language,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColor.black,
            ),
          headline2: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: AppColor.black,
            ),
          bodyText1: TextStyle(
                    height: 2,
                    color: AppColor.gray,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
          bodyText2: TextStyle(
                    height: 2,
                    color: AppColor.gray,
                    fontSize: 14),
        ),
        primarySwatch: Colors.blue,
      ),
      home:const Language(),
      routes: routes,
    );
  }
}
