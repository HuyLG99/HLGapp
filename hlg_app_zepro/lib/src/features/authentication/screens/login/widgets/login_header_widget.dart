import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/constants/image_strings.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(tWelcomeScreenImage),
          height: size.height * 0.2,
        ),
        Text(tLoginTitle),
        Text(tLoginSubTitle),
      ],
    );
  }
}
