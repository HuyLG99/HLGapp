import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/firebase_options.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:hlg_app_zepro/src/repository/authentication_repository/exceptions/authentication_repository.dart';
import 'package:hlg_app_zepro/src/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Create Start Firebase
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HLG APP',
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}
