import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/common_widgets/fade_in_aniomation/annimation_design.dart';
import 'package:hlg_app_zepro/src/common_widgets/fade_in_aniomation/fade_in_animation_model.dart';
import 'package:hlg_app_zepro/src/constants/sizes.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';
import 'package:hlg_app_zepro/src/common_widgets/fade_in_aniomation/fade_is_animation_controller.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animatedPosition: TAnimatedPosition(
                topAfter: 0, topBefore: -30, leftAfter: 0, leftBefore: -30),
            child: const Image(image: AssetImage(tSplashTopIcon)),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animatedPosition: TAnimatedPosition(
                topAfter: 100,
                topBefore: 100,
                leftAfter: tDefaultSize,
                leftBefore: -100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                Text(tAppTagLine,
                    style:
                        TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animatedPosition:
                TAnimatedPosition(botttomAfter: 150, botttomBefore: 0),
            child: Image(
              image: AssetImage(tSplaspImage),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animatedPosition: TAnimatedPosition(
                botttomBefore: 0,
                botttomAfter: 70,
                rightAfter: tDefaultSize,
                rightBefore: tDefaultSize),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.purpleAccent,
                    Colors.pink,
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
