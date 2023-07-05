import 'package:get/get.dart';

import '../screens/welcome/welcome_screens.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  
  RxBool animated = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animated.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(WelcomeScreen());
  }
}
