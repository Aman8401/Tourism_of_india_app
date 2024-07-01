import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_of_india/Pages/Auth/AuthUI/loginPage.dart';
import 'package:tourism_of_india/utils/carouse1_slider.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/utils/otherUtils/bottomSheet.dart';
import 'package:tourism_of_india/utils/otherUtils/navigationDrawerBar.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  RxBool loder = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton:  Obx(() => FloatingActionButton(
        onPressed: () {
          loder.value=true;
          Future .delayed(Duration(seconds: 1, milliseconds: 300),() {
            Get.to(LoginPage());
            loder.value=false;
          },);


        },
        child:  loder.value? const Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircularProgressIndicator(color: Colors.redAccent,),
          ],
        ) : const Icon(Icons.add_box_rounded),),),

      // child: const Icon(
          //   Icons.add_box_rounded,
          // )),),
      appBar: AppBar(

        title:  Row(
          children: [
            CircleAvatar(
                backgroundImage: AssetImage("assets/images/indianLogo.png"),
                backgroundColor: Colors.purple,
              ),
            Spacer(),
            Text(
              'title'.tr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Spacer(),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/make in india.jpeg"),
            )
          ],
        ),
        backgroundColor: Colors.purple,

      ),

      drawer: NavigationDrawerBar(),
      drawerScrimColor: Colors.transparent,
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(top: 10),
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.black26,
          child: Column(
            children: [
              Slider1(),
              Padding(
                padding: EdgeInsets.all(16.0), // Add padding around the text
                child: Text(
                  'quote'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.grey,
                child: Center(
                    child: Text(
                  's & g'.tr,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/MainContainers/facilitation.jpeg"),
                              opacity: 0.7,
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.all(20),
                      child: const Center(
                        child: Text(
                          "Facilitation & Standards",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/MainContainers/Strategy&product dev.png"),
                              opacity: 0.7,
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.all(15),
                      child: const Center(
                        child: Text(
                          "Strategy & Product Development",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/MainContainers/DestinationDev.jpg"),
                              opacity: 0.7,
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.all(15),
                      child: const Center(
                        child: Text(
                          "Destination Development",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/MainContainers/admin.jpg"),
                              opacity: 0.7,
                              fit: BoxFit.cover)),
                      child: const Center(
                        child: Text(
                          "Administration & Information Technology",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/MainContainers/RD.jpg"),
                              opacity: 0.7,
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.all(15),
                      child: const Center(
                        child: Text(
                          "Research & Development",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/MainContainers/Marketing.jpg"),
                              opacity: 0.7,
                              fit: BoxFit.cover)),
                      child: Center(
                        child: Text(
                          "Destination Devlopment",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                      margin: EdgeInsets.all(15),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        width: 200,
                        color: Colors.orange,
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(8),
                        child:  Column(
                          children: [
                            Text(
                              "What's New",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("- ${'What new'.tr}")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        width: 200,
                        color: Colors.white,
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(8),
                        child:  Column(
                          children: [
                            Text("Related link "),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Related link 1'.tr),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Related link 2'.tr,),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.indigo.shade900,
                child: Column(
                  children: [
                    Text("Discription", style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold, color: Colors.cyan),),
                     Text(
                        'Des'.tr,
                      style: TextStyle(color: Colors.white60,fontSize: 20,letterSpacing: 2),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),

    );
  }
}
