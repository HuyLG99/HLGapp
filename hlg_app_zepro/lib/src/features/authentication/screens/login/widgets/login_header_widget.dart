import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/constants/image_strings.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(tWelcomeScreenImage),
          height: size.height * 0.3,
        ),
        Text(tLoginTitle,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        Text(
          tLoginSubTitle,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
