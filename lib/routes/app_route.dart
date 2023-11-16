part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashscreen = _path.splashScreen;
  static const homeScreen = _path.homeScreen;
   static const onboardScreen = _path.onboardScreen;
    static const profileScreen= _path.profileScreen;
    static const userSelectScreen= _path.userSelectScreen;
}

abstract class _path {
  _path._();
  static const splashScreen = "/";
  static const homeScreen = "/homescreen";
  static const onboardScreen = "/OnboardScreen";
  static const profileScreen = "/profilescreen";
  static const userSelectScreen = "/userSelectScreen";
}
