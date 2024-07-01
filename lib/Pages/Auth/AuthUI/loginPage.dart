
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/Auth/AuthUI/signupPage.dart';
import 'package:tourism_of_india/Pages/Auth/AuthUI/withNumberPage.dart';
import 'package:tourism_of_india/utils/otherUtils/navigationDrawerBar.dart';
import 'package:tourism_of_india/utils/themeChange.dart';

import '../../../Controllers/AuthController/loginController.dart';
import '../../../Widgets/Mybutton.dart';
import '../../../Widgets/myTextField.dart';



class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
   LoginController loginController = Get.put(LoginController());
    return Scaffold(
      floatingActionButton: ChangeThemePage(),
      appBar: AppBar(
        title: Text(" L O G I N "),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      drawer: NavigationDrawerBar(),
      body: SafeArea(
        child: Stack(
            children:[
              Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'assets/images/sunrise.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              SingleChildScrollView(

                padding: EdgeInsets.all(25),

                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(

                      children: [
                        SizedBox(height: 250,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          "Welcome back",
                          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "LOGIN Again!!",
                          style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    MyTextField(
                      icons: Icons.email,
                      obscureText: false,
                      lable: "Email id",
                      Onchange: loginController.email,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      icons: Icons.password,
                      lable: "Password",
                      obscureText: true,
                      Onchange: loginController.password,
                    ),
                    const SizedBox(height: 20),
                  Obx(() => loginController.isLoading.value
                      ?
                  CircularProgressIndicator(color: Colors.greenAccent,backgroundColor: Colors.transparent,)
                      :
                  MyButton(
                    icon: Icons.admin_panel_settings_rounded,
                    Btname: "LOGIN",
                    Btcolor: Colors.green,
                    ontap: () {
                      loginController.signIn(loginController.email.text, loginController.password.text);
                    },
                  ),),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.person_add,
                            Btname: "SIGN UP",
                            Btcolor: Colors.red,
                            ontap: () {
                              Get.to(SignupPage());
                            },
                          ),
                          Spacer(),
                          MyButton(
                            icon: Icons.perm_phone_msg,
                            Btname: "Login With OTP",
                            Btcolor: Colors.purple,
                            ontap: () {
                              Get.to(LoginWithNumber());
                            },
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ]
        ),
      ),
    );
  }
}