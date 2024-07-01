import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Controllers/CRUDController/CRUDController.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({super.key});
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    CRUDController controller = Get.put(CRUDController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Plan's"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              controller.readCrud();
            }, child: Text('Get Your All Palns')),
            // Expanded(
            //   child: Obx(() {
            //     if (CRUDController().isLoading.value) {
            //       // Show a loading indicator (e.g., CircularProgressIndicator)
            //       return Center(child: CircularProgressIndicator());
            //     } else {
            //       return ListView(
            //           children:
            //           CRUDController().crudList.map((e) =>
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: ListTile(
            //                   tileColor: Colors.deepPurpleAccent,
            //                   onTap: () {},
            //                   title: Text("Title"),
            //                   trailing: SizedBox(
            //                     width: 100,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         Icon(Icons.delete),
            //                         SizedBox(width: 10,),
            //                         Icon(Icons.edit)
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               )
            //           ).toList()
            //       );
            //     }
            //   }),
            // ),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.crudList.length, // Use crudList length
                itemBuilder: (context, index) {
                  final item = controller.crudList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Text("${index +1}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                      tileColor: Colors.deepPurpleAccent,
                      onTap: () {},
                      title: Text(item.place!), // Access place property
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.desti!),
                          Text(item.add!),
                        ],
                      ),

                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.delete),
                            SizedBox(width: 10,),
                            Icon(Icons.edit)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}

