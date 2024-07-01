import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/AuthController/withNumberController.dart';
import '../../../Widgets/myTextField.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginWithNumberController controller = Get.put(LoginWithNumberController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(30),
          color: const Color.fromRGBO(225, 255, 225, 100),
          child: Column(
            children: [
              Image.asset(
                "assets/images/otppage2.png",
                height: 350,
              ),
              const Text(
                "OTP Sent Successfully",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyTextField(
                    lable: "Enter OTP",
                    icons: Icons.numbers,
                    Onchange: controller.otp,
                    obscureText: true),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Obx(
                    () => controller.isLoading.value
                        ? const CircularProgressIndicator(
                            color: Colors.deepPurpleAccent,
                          )
                        : ElevatedButton(
                            onPressed: () {
                              controller.signupWithNumber();
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.purple)),
                            child: const Text("Sent OTP again")),
                  ),
                  Spacer(),
                  Obx(
                    () => controller.isLoading.value
                        ? const CircularProgressIndicator(
                            color: Colors.greenAccent,
                          )
                        : ElevatedButton(
                            onPressed: () {
                              controller.otpVerification();
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.green)),
                            child: const Text("Submit")),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
