import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_manage/routes/app_pages.dart';
import 'package:school_manage/utils/Kimagepath.dart';

import '../models/onboard_data_models.dart';

class OnboardController extends GetxController {
  RxInt index = 0.obs;
  changeindex(int pageIndex) {
    index.value = pageIndex;
  }

  goTonextpage() {
    if (index.value == onboardDataList.length - 1) {
      Get.offAllNamed(Routes.userSelectScreen);
    } else {
      index.value++;
      onboardpageController.nextPage(
          duration: Duration(seconds: 2), curve: Curves.ease);
    }
  }

  late PageController onboardpageController =
      PageController(initialPage: index.value);
  RxList<OnboardDataModel> onboardDataList = <OnboardDataModel>[
    OnboardDataModel(
        img: KImagesPath.onboarding1,
        title: "Onboard title 1",
        subtitle: "Onboard subtitle 1"),
    OnboardDataModel(
        img: KImagesPath.onboarding2,
        title: "Onboard title 2",
        subtitle: "Onboard subtitle 2"),
    OnboardDataModel(
        img: KImagesPath.onboarding3,
        title: "Onboard title 3",
        subtitle: "Onboard  subtitle 3"),
  ].obs;
}
