import 'package:ecommerce/controller/onboarding.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            onBoardingList[index].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            onBoardingList[index].image!,
            width: 150,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[index].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              )),
        ],
      ),
    );
  }
}
