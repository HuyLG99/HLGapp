import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        SizedBox(height: tFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(tGoogleLogoImage),
                width: 20,
              ),
              onPressed: () {},
              label: Text(tSignInWithGoogle)),
        ),
        SizedBox(height: tFormHeight - 20),
        TextButton(
            onPressed: () {},
            child: Text.rich(
              TextSpan(
                  text: tDontHaveAnAccount,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                        text: tSignup,
                        style: TextStyle(color: Colors.blue))
                  ]),
            ))
      ],
    );
  }
}
