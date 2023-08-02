import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hlg_app_zepro/src/constants/sizes.dart';
import 'package:hlg_app_zepro/src/constants/text_strings.dart';
import 'package:hlg_app_zepro/src/features/authentication/controllers/otp_controller.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController()); //
    var otp;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(tDefaultSize),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(tOtpTitle,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80,
            )),
        Text(
          tOtpSubTitle.toUpperCase(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        Text(
          "$tOtpMessage support@LeeJaHwiDev.com",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        OTPTextField(
            length: 6,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 45,
            fieldStyle: FieldStyle.box,
            otpFieldStyle: OtpFieldStyle(
              backgroundColor: Colors.black.withOpacity(0.1),
            ),
            outlineBorderRadius: 15,
            style: TextStyle(fontSize: 17),
            onChanged: (pin) {
              print("Changed: " + pin);
            },
            onCompleted: (pin) {
              print("Completed: OTP is =>" + pin);
              otp=pin;
              OTPController.instance.verifyOTP(otp);
            }),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {
            OTPController.instance.verifyOTP(otp);
          }, child: Text(tNext)),
        ),
      ]),
    ));
  }
}
