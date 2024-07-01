import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/utils/otherUtils/SnackBarPage.dart';


import '../../../Controllers/AuthController/signupController.dart';
import '../../../Widgets/myTextField.dart';
import 'loginPage.dart';

class SignupPage extends StatelessWidget {
  // Text editing controllers for form fields

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.put(SignupController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){},
        child: Icon(Icons.home),),
      appBar: AppBar(
        title: Text('Sign Up Page'),
        centerTitle: true,// Replace with your app name
        backgroundColor: Color.fromRGBO(79, 55, 138, 100),
      ),
      body:
      SingleChildScrollView(

        child: Container(
          color: Colors.deepPurple.shade50,
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
          children: [
            // Logo (Optional)
            // Your logo widget here


            Container(width: 400,
              height: 200,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/signup.jpg"))),

            ),
            const Text(
              'Create Account',
              style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,
                //color: Colors.white
              ) ,
            ),
            SizedBox(height: 20.0),
            MyTextField(
              icons: Icons.person,
              lable: "Full Name",
              obscureText: false,
              Onchange: controller.nameController,
            ),
            SizedBox(height: 10.0),
            // TextField(
            //   controller: controller.phoneController,
            //   decoration: InputDecoration(
            //     labelText: 'Phone (Optional)',
            //     // labelStyle: TextStyle(color: Colors.white)
            //   ),
            // ),
            MyTextField(
              icons: Icons.phone,
              lable: "Phone(Optional)",
              obscureText: false,
              Onchange: controller.phoneController,
            ),
            SizedBox(height: 10.0),
            MyTextField(
              icons: Icons.email,
              lable: "email",
              obscureText: false,
              Onchange: controller.emailController,
            ),
            SizedBox(height: 10.0),
            MyTextField(
              icons: Icons.password,
              lable: "Password",
              obscureText: true,
              Onchange: controller.passwordController,
            ),
            SizedBox(height: 10.0),
            MyTextField(
              icons: Icons.password,
              lable: "Confirm Password",
              obscureText: true,
              Onchange: controller.passwordController,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                SnackBarPage();
                controller.onSignUp();

              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Get.offAll(LoginPage());
                  },
                  child: Text('Sign In'),
                ),
              ],
            ),
            Container(height: 100,)

          ],
          ),
        ),
      ),

      //bottomSheet:
      bottomNavigationBar: Container(
      width: 410,
      height: 20,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("  Help  |", style: TextStyle(color: Colors.white,),),
          Text("  Contact us |", style: TextStyle(color: Colors.white,),),
          Text("  About  |", style: TextStyle(color: Colors.white,),),
          Text("  More Information  |", style: TextStyle(color: Colors.white,),),
        ],
      ),
    ),
    );
  }
}
