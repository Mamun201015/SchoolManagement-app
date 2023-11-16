import 'package:get/get.dart';
import 'package:school_manage/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    gottopage();
    super.onInit();
  }

  gottopage() async {
    await Future.delayed(Duration(seconds: 5));
    Get.offAllNamed(Routes.onboardScreen);
  }
}
