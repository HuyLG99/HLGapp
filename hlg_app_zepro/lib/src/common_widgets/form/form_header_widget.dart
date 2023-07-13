import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  FormHeaderWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageColor,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.imageHeight = 0.3,
      this.heightBetween,
      this.textAlign});

  final String image, title, subTitle;
  final Color? imageColor;
  final CrossAxisAlignment crossAxisAlignment;
  final double imageHeight;
  final double? heightBetween;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHeight,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: textAlign,
        ),
      ],
    );
  }
}
