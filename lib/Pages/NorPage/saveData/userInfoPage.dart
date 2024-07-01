

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/crud/createUI.dart';

import '../../../Controllers/AuthController/signupController.dart';
import '../../../utils/geoLocation.dart';



class UserInfoPage extends StatelessWidget {
    UserInfoPage({super.key});

    var location;

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());
    // LocationController locationController = LocationController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Information"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:
      Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 100.0, // Set the desired radius for the circle avatar
                     backgroundImage: AssetImage("assets/images/indianLogo.png"),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 50,),
                const Center(child: Text("Your Information", style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
                const SizedBox(height: 30,),
                Text("Name:- ${controller.users?.uid}", style: TextStyle(fontSize: 21,),),
                const SizedBox(height: 10,),
                Obx(() => Text("Mobile No:- ${controller.mobileNumber.value}", style: TextStyle(fontSize: 21,),),),
                const SizedBox(height: 10,),
                Obx(() =>Text("Email Id:- ${controller.emailId.value}", style: TextStyle(fontSize: 21,),),
                ),
                const SizedBox(height: 10,),

                ElevatedButton(onPressed: ()async{
                 // location = await locationController.currentLocation();
                  print(location);
                }, child: const Text("Get Location")),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Latitude = ${location?.latitude};                "
                      "Longitude = ${location?.longitude}",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                ),

                const SizedBox(height: 50,),
               Center(
                 child: Obx(() =>  controller.isLoading.value ? CircularProgressIndicator():ElevatedButton(onPressed: (){
                   controller.logoutUser();
                 },
                   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade400,),

                   ), child:  Text("Logout"),
                 ),),
               ),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Get.to(const CreateCRUD());
                  },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade400,),
            
                    ), child:  const SizedBox(
                      width: 120,
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 10,),
                          Text("Create a plan"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}



// InkWell(
//     onTap: (){
//       locationController.ShowLocation();
//     },
//     child: Text("Your Location:- ${locationController.location}", style: TextStyle(fontSize: 21,),)),
