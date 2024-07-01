import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/crud/createUI.dart';
import 'package:tourism_of_india/Pages/crud/readPage.dart';

class CRUDHome extends StatelessWidget {
  const CRUDHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make Your trip plan"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Get.to(CreateCRUD());
          }, child: Text("Make Your Plan")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Get.to(ReadPage());
          }, child: Text("Check All Plans")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Delete Your Plan")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Edit Your Plan"))
        ],
      ),
    );
  }
}
