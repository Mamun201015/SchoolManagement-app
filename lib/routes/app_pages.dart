import 'package:get/get_navigation/get_navigation.dart';
import 'package:school_manage/app/module/home%20screen/bindings/home_bindings.dart';
import 'package:school_manage/app/module/home%20screen/view/home_view.dart';
import 'package:school_manage/app/module/on%20board%20screen/bindigs/on_board_bindings.dart';
import 'package:school_manage/app/module/on%20board%20screen/view/On%20board_view.dart';
import 'package:school_manage/app/module/profile%20screen/bindigs/profile_bindigs.dart';
import 'package:school_manage/app/module/profile%20screen/view/profile_view.dart';
import 'package:school_manage/app/module/splash%20screen/splash_view.dart';
import 'package:school_manage/app/module/userSelectpage/bindigs/userselect_bindigs.dart';
import 'package:school_manage/app/module/userSelectpage/view/userSelect_view.dart';
import '../app/module/splash screen/bindigs/splash_bindigs.dart';
part 'app_route.dart';

class AppPages {
  static const initialpages = Routes.splashscreen;
  static final pages = [
    GetPage(
        name: _path.splashScreen,
        page: () => const SplashView(),
        binding: SplashBindigs()),
    GetPage(
        name: _path.homeScreen,
        page: () => const HomeScreenView(),
        binding: HomepageBindigs()),
         GetPage(
        name: _path.onboardScreen,
        page: () => const OnboardpageView(),
        binding: OnboardBindigs()),
        GetPage(
        name: _path.profileScreen,
        page: () => const profilepageView(),
        binding:ProfilepageBindigs()),
         GetPage(
        name: _path.userSelectScreen,
        page: () => const UserSelectView(),
        binding:UserSelectBindings()),
  ];
}
