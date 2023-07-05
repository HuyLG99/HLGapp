import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/constants/sizes.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';
import 'package:hlg_app_zepro/src/features/authentication/controllers/splash_screen_controller.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    // SplashScreenController.find.startAnimation;
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: splashController.animated.value ? 0 : -30,
              left: splashController.animated.value ? 0 : -30,
              child: Image(
                width: 110,
                image: AssetImage(tSplashTopIcon),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: 100,
                left: splashController.animated.value ? tDefaultSize : -100,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1600),
                  opacity: splashController.animated.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                      Text(tAppTagLine,
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: Duration(milliseconds: 2400),
                bottom: splashController.animated.value ? 150 : 0,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2000),
                  opacity: splashController.animated.value ? 1 : 0,
                  child: Image(
                    image: AssetImage(tSplaspImage),
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: Duration(milliseconds: 2400),
                bottom: splashController.animated.value ? 70 : 0,
                right: tDefaultSize,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2400),
                  opacity: splashController.animated.value ? 1 : 0,
                  child: Container(
                    width: tsplashContainerSize,
                    height: tsplashContainerSize,
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
                )),
          ),
        ]),
      ),
    );
  }
}
