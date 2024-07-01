import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/utils/otherUtils/DialogBarPage.dart';


class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.snackbar("Welcome!!", "To the snack bar",colorText: Colors.black);

            },
                child: Text("Snack Bar Open")
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Get.to(DialogBar());
            }, child: Text("Go to Dialog bar page")),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Get.showSnackbar(GetSnackBar(
                title: "Welcome to the Snack bar",
                message: "User registered Successfully",
                icon: Icon(Icons.notifications_active_sharp),
              ));
            },

                child: Text("Show Snack Bar"))
          ],
        ),
      ),
    );
  }
}

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
            "Aman Parihar"
        ),
      ),
    );
  }
}

