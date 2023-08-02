import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/features/core/screens/dashboard/dashboard.dart';
import 'package:hlg_app_zepro/src/repository/authentication_repository/exceptions/authentication_repository.dart';

class OTPController extends GetxController{

  static OTPController get instance =>Get.find();

  void verifyOTP(String otp)async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(DashBoard()) : Get.back();
  }
}