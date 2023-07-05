
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    // var height = mediaQuery.size.height;
    // var brightness = mediaQuery.platformBrightness;
    // final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Container(child: Center(child: Text('Welcome')),),
    );
  }
}
