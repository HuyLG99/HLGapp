import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/welcome_screen/welcome_screens.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animated = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animated.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animated.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animated.value = true;

  }
}
