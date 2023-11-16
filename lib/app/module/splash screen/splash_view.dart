import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_manage/app/module/splash%20screen/controller/splash_controller.dart';
import 'package:school_manage/utils/Kimagepath.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              KImagesPath.appLogo,
              width: Get.width / 2,
              height: Get.width / 2,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                strokeWidth: 10,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
