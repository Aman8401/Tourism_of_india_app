import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/AuthController/withNumberController.dart';
import '../../../Widgets/Mybutton.dart';

class LoginWithNumber extends StatelessWidget {
  const LoginWithNumber({super.key});

  @override
  Widget build(BuildContext context) {
    LoginWithNumberController controller = Get.put(LoginWithNumberController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Log-In Page"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Color.fromRGBO(225, 255, 225, 100),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Image(image: AssetImage("assets/images/signup.jpg"),
                height: 250,),
              SizedBox(height: 50,),
              Text("Log in using Phone Number and OTP", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.teal,),textAlign: TextAlign.center,),
              SizedBox(height: 100,),

              TextFormField(
                controller: controller.phoneNumber,
                maxLength: 10,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    fillColor: Colors.deepPurple.shade300,
                    filled: true,
                    hintText: "Enter Mobile Number",
                    prefix: Container(
                      child: Text("+91"),
                    )
                ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: Obx(() => controller.isLoading.value ? CircularProgressIndicator():
                MyButton(icon: Icons.message,
                    Btname: "Get OTP",
                    ontap: (){controller.signupWithNumber();},
                    Btcolor: Colors.lightGreen),),
              ),
              const SizedBox(height: double.maxFinite,)
            ],
          ),
        ),
      ),
    );
  }
}
