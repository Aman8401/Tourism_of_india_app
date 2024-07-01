import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/Auth/AuthUI/otpPage.dart';
import 'package:tourism_of_india/Pages/NorPage/MainHomePage.dart';

class LoginWithNumberController extends GetxController{

  RxBool isLoading = false.obs;
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController otp = TextEditingController();

  String verifyId = "";

  FirebaseAuth auth = FirebaseAuth.instance;
  User? users = FirebaseAuth.instance.currentUser;


  void signupWithNumber() async{
    isLoading.value = true;
    try{
      await auth.verifyPhoneNumber(
        phoneNumber: "+91${phoneNumber.text}",
        timeout: const Duration(minutes: 2),
        verificationCompleted: (PhoneAuthCredential credential){

        }, verificationFailed: (FirebaseAuthException e){

      }, codeSent: (String verificationId, int? resendToken){
        verifyId = verificationId;
        Get.snackbar("OTP", "OTP Send Successfully on Your Number${phoneNumber.text}",
            backgroundColor: Colors.grey,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white);
        Get.to(const OtpPage());
      }, codeAutoRetrievalTimeout: (String verificationId)
      {},
      );
    }catch(ex){
      print(ex);
    }finally {
      isLoading.value = false;
    }
  }

  void otpVerification ()async{
    isLoading.value = true;
    try{
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verifyId,
          smsCode: otp.text);
      await auth.signInWithCredential(credential);
      Get.snackbar("OTP Verify", "Login Successfully");
      Get.offAll(const MainHomePage());
    }catch (ex){
      Get.snackbar("Error", "$ex",
          colorText: Colors.black,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM
      );
    }
    isLoading.value = false;
  }



}