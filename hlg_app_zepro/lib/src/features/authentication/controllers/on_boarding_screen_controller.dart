import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_screen.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage1,
            title: tOnBoardingTitle1,
            counterText: tOnBoardingCounter1,
            bgColor: tOnBoardingPage1Color,
            subTitle: tOnBoardingSubTitle1)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage2,
            title: tOnBoardingTitle2,
            counterText: tOnBoardingCounter2,
            bgColor: tOnBoardingPage2Color,
            subTitle: tOnBoardingSubTitle2)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage3,
            title: tOnBoardingTitle3,
            counterText: tOnBoardingCounter3,
            bgColor: tOnBoardingPage3Color,
            subTitle: tOnBoardingSubTitle3)),
  ];

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  skip() => controller.jumpToPage(page: 2);
}
