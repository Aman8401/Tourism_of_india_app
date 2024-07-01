import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/Auth/AuthUI/loginPage.dart';
import 'package:tourism_of_india/Pages/NorPage/splashScreen.dart';


class SignupController extends GetxController {

  RxString name = "".obs;
  RxString mobileNumber = "".obs;
  RxString emailId = "".obs;


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  User? users = FirebaseAuth.instance.currentUser;

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }

  void getUserData() {
    if (users != null) {
      mobileNumber.value = users!.phoneNumber.toString();
      emailId.value = users!.email.toString();
    }
  }

  void logoutUser() async {
    isLoading.value = true;
    await auth.signOut();

    Get.offAll(SplashScreen());
    isLoading.value = false;
  }

  void onSignUp() {
    final email = emailController.text;
    final pass = emailController.text;
    if (email.isEmpty || pass.isEmpty) {
      Get.snackbar("Error", "Please Enter Your Email & password.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
    print("Name: $nameController");
    print("Phone: $phoneController");
    print("Email: $emailController");
    print("Password: $passwordController");
    createAccount(emailController.text, passwordController.text);
  }

  Future<void> createAccount(String emailController,
      String passwordController) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailController, password: passwordController);
      print("Account Created");
      Get.snackbar("Success", "Account created Successfully.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white);
      Get.to(LoginPage());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        print("Weak Password");
        Get.snackbar("Error", "Weak-Password please enter a strong Password.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (ex.code == "email-already-in-use") {
        Get.snackbar("Error", "Email Already exists Login Please !.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        print("Email Already exists Login Please !");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}
