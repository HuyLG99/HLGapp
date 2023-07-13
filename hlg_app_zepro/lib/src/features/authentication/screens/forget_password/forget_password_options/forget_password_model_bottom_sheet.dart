import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tForgetPasswordTitle,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  tForgetPasswordSubTitle,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                ForgetPasswordBtnWidget(
                  btnIcon: Icons.mail_outline_rounded,
                  title: tEmail,
                  subTitle: tResetViaEMail,
                  onTab: () {
                    Navigator.pop(context);
                    Get.to(()=> ForgetPasswordMailScreen());
                  },
                ),
                SizedBox(height: 20),
                ForgetPasswordBtnWidget(
                  btnIcon: Icons.mobile_friendly_rounded,
                  title: tPhoneNo,
                  subTitle: tResetViaPhone,
                  onTab: () {},
                ),
              ],
            ),
          ));
}

}


