import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DialogBar extends StatelessWidget {
  const DialogBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Bar"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Row(
          children: [
            SizedBox(width: 40,),
            ElevatedButton(onPressed: (){
              Get.defaultDialog(title: "I am a dialog bar");
            }, child: Text("Open Dialog bar")),
            SizedBox(width: 20,),
            ElevatedButton(onPressed: (){
              Get.defaultDialog(title: "Welcome to the Dialog bar",
                  middleText: "Welcome to the GetX Project",
                  titleStyle: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  middleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.black,
                  textCancel: "Cancel",
                  textConfirm: "Confirm",
                  cancelTextColor: Colors.red,
                  confirmTextColor: Colors.green,
                  buttonColor: Colors.white,
                  radius: 10,
                  barrierDismissible: false

              );
            }, child: Text("Show Dialog box"))
          ],
        ),
      ),
    );
  }
}
