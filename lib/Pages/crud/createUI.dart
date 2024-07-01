import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Controllers/CRUDController/CRUDController.dart';
import 'package:tourism_of_india/Widgets/myTextField.dart';

class CreateCRUD extends StatelessWidget {
  const CreateCRUD({super.key});

  @override
  Widget build(BuildContext context) {
    CRUDController controller = Get.put(CRUDController());
    TextEditingController a = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add places to visit",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.deepPurpleAccent.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: MyTextField(
                    lable: "ENTER TEMPLE OR DESTINATION NAME",
                    icons: Icons.temple_hindu,
                    Onchange: controller.templeOrPlace,
                    obscureText: false),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: MyTextField(
                    lable: "ENTER PLACE NAME",
                    icons: Icons.place,
                    Onchange: controller.place,
                    obscureText: false),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: MyTextField(
                    lable: "ENTER ADDRESS",
                    icons: Icons.location_city,
                    Onchange: controller.address,
                    obscureText: false),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.addCRUD();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.green.shade800)),
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
