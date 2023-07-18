import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hlg_app_zepro/src/features/authentication/screens/welcome_screen/welcome_screens.dart';
import 'package:hlg_app_zepro/src/features/core/screens/dashboard/dashboard.dart';
import 'package:hlg_app_zepro/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variabales
  final _auth = FirebaseAuth.instance;
  late Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitalScreen);
  }

  _setInitalScreen(User? user) {
    user == null
        ? Get.offAll(() => WelcomeScreen())
        : Get.offAll(() => DashBoard());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
    );

    if (userCredential.user != null) {
      Get.offAll(() => DashBoard());
    } else {
      Get.to(() => WelcomeScreen());
    }
  } on FirebaseAuthException catch (e) {
    final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
    print("FIREBASE AUTH EXCEPTION - ${ex.message}");
    throw ex;
  } catch (e) {
    final ex = SignUpWithEmailAndPasswordFailure();
    print("EXCEPTION - ${ex.message}");
    throw ex;
  }
}

  Future<void> loginUserWithEmailAndPassord(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
