import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/features/authentication/controllers/singup_controller.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      key: _formKey,
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.fullname,
            decoration: InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          SizedBox(height: tFormHeight - 20),
          TextFormField(
            controller: controller.email,
            decoration: InputDecoration(
                label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined)),
          ),
          SizedBox(height: tFormHeight - 20),
          TextFormField(
            controller: controller.phoneNo,
            decoration: InputDecoration(
                label: Text(tPhoneNo), prefixIcon: Icon(Icons.phone)),
          ),
          SizedBox(height: tFormHeight - 20),
          TextFormField(
            controller: controller.password,
            decoration: InputDecoration(
                label: Text(tPassword), prefixIcon: Icon(Icons.fingerprint)),
          ),
          SizedBox(height: tFormHeight - 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
               print('EEEEEE VOO DC NE ${(_formKey.currentState?.validate())}');
                // if (_formKey.currentState?.validate()==true) {
                //   print('EEEEEE VOO DC NE');
                  // SignUpController.instance.registerUser(
                  //     controller.email.text.trim(),
                  //     controller.password.text.trim());
                // }
                SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                Get.to(()=>OTPScreen());
              },
              child: Text(tSignup.toUpperCase()),
            ),
          ),
        ],
      )),
    );
  }
}
