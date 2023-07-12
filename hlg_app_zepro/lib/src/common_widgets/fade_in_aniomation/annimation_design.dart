import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/common_widgets/fade_in_aniomation/fade_in_animation_model.dart';
import 'fade_is_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMs, required this.animatedPosition, required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatedPosition? animatedPosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animated.value ? animatedPosition?.topAfter : animatedPosition?.topBefore,
        left: controller.animated.value ? animatedPosition?.leftAfter : animatedPosition?.leftBefore,
        bottom: controller.animated.value ? animatedPosition?.botttomAfter : animatedPosition?.botttomBefore,
        right: controller.animated.value ? animatedPosition?.rightAfter : animatedPosition?.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animated.value ? 1 : 0,
          child: child
        ),
      ),
    );
  }
}
