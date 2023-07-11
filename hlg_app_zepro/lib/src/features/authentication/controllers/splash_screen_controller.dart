import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';


class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  
  RxBool animated = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animated.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(OnBoardingScreeen());
  }
}
