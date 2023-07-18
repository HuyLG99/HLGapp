import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/repository/authentication_repository/exceptions/authentication_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  //Textfiled Controller to get data from TextFileds
  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();


  //Call this funtion form Design & it will do the rest
  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}