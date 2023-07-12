import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/common_widgets/fade_in_aniomation/annimation_design.dart';
import 'package:hlg_app_zepro/src/common_widgets/fade_in_aniomation/fade_in_animation_model.dart';
import 'package:hlg_app_zepro/src/constants/colors.dart';
import 'package:hlg_app_zepro/src/constants/image_strings.dart';
import 'package:hlg_app_zepro/src/constants/sizes.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/login/login_screen.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../common_widgets/fade_in_aniomation/fade_is_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animatedPosition: TAnimatedPosition(
              botttomAfter: 0,
              botttomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: ()=> Get.to(()=>const LoginScreen()) ,
                            child: Text(tLogin.toUpperCase())),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(SignUpScreen());
                            },
                            child: Text(tSignup.toUpperCase())),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
