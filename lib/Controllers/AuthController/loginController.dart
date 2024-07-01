


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Controllers/AuthController/signupController.dart';
import 'package:tourism_of_india/Pages/NorPage/MainHomePage.dart';


class LoginController extends GetxController {

  SignupController controller = SignupController();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isLoading = false.obs;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void onLogin() {
    final mail = email.text;
    final pass = password.text;
    signIn(email.text, password.text);
    if(mail.isEmpty || pass.isEmpty){
      Get.snackbar("Error", "Please Enter Your Email & password.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  Future<void> signIn(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      print("Login");
      Get.snackbar("Login Successfully", "Welcome, ${controller.nameController.text}");
      Get.to(const MainHomePage());

    } on FirebaseAuthException catch (ex) {

      if (ex.code == "user-not-found") {
        print("email id dose not exists");
        Get.snackbar("Error", "Email id dose not exists, Please signup",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red);
      } else if (ex.code == "wrong-password") {
        print("Wrong password");
        Get.snackbar("Error", "Wrong password",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red);

      }else if (ex.code == "invalid-credential") {
        print("Incorrect email or password.");
        Get.snackbar("Error", "Incorrect email or password.",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red);

      }else if (ex.code == "too-many-requests") {
        print("Too many attempts, please try again after some time.");
        Get.snackbar("Error", "Too many attempts, please try again after some time..",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red);

      }else {
        print('An unexpected error occurred: ${ex.code}'); // Handle other errors
      }

    }finally{
      isLoading.value = false;
    }
  }
}



