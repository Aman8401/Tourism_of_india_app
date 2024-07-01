// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../../Model/crudModel.dart';
//
// class CRUDController extends GetxController {
//   TextEditingController templeOrPlace = TextEditingController();
//   TextEditingController place = TextEditingController();
//   TextEditingController address = TextEditingController();
//
//   RxList<crudModel> crudList = RxList<crudModel>();
//
//   final auth = FirebaseAuth.instance;
//   final db = FirebaseFirestore.instance;
//
//   Future<void> addCRUD() async {
//     String? userId = auth.currentUser?.uid;
//
//     if (userId != null) {
//       var newCRUD = crudModel(
//           id: userId,
//           desti: templeOrPlace.text,
//           place: place.text,
//           add: address.text);
//
//       try {
//         // await db.collection("CRUD").doc(index.toString()).set(newCRUD.toJson(),);
//         await db.collection("CRUD").add(newCRUD.toJson());
//         print("Data Added");
//       } catch (e) {
//         print("Error in adding:$e");
//       }
//     } else {
//       print("User is not logged In");
//     }
//   }
//
//   Future<void> readCrud() async {
//     crudList.clear();
//     await db.collection("CRUD").get().then((allCrud) {
//       for (var crud in allCrud.docs) {
//         crudList.add(
//           crudModel.fromJson(crud.data()),
//         );
//       }
//     });
//     print("Get Data");
//   }
// }
//
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../Model/crudModel.dart';

class CRUDController extends GetxController {
  TextEditingController templeOrPlace = TextEditingController();
  TextEditingController place = TextEditingController();
  TextEditingController address = TextEditingController();

  RxList<crudModel> crudList = RxList<crudModel>();

  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  @override
  void onInit(){
    super.onInit();
    readCrud();
  }

  Future<void> addCRUD() async {
    String? userId = auth.currentUser?.uid;
    if (userId != null) {
      var newCRUD = crudModel(
          id: userId,
          desti: templeOrPlace.text,
          place: place.text,
          add: address.text);

      try {
        await db.collection("CRUD").add(newCRUD.toJson());
        print("Data Added");
        crudList.add(newCRUD);

      } catch (e) {
        print("Error in adding: $e");
      }
    } else {
      print("User is not logged In");
    }
    place.clear();
    address.clear();
    templeOrPlace.clear();
  }

  Future<void> readCrud() async {
    crudList.clear();
    await db.collection("CRUD").get().then((allCrud) {
      for (var crud in allCrud.docs) {
        crudList.add(
          crudModel.fromJson(crud.data()),
        );
      }
    });
    print("Get Data");
  }
}
