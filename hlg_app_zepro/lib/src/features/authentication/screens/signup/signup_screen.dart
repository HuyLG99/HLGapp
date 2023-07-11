import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/constants/image_strings.dart';
import 'package:hlg_app_zepro/src/constants/sizes.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';

import '../../../../common_widgets/form/form_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                image: tWelcomeScreenImage,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
                child: Form(child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(tFullName)
                    ),
                  )
                ],)),
              )
            ],
          ),
          ),
        ),
      ),
    );
  }
}