// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:untitled2/pages/register.dart';
//
// import '../mainScreen.dart';
// import 'addStudent.dart';
// import 'loginHomePage.dart';
//
// class RegisteredStudents extends StatefulWidget {
//   const RegisteredStudents({super.key});
//
//   @override
//   State<RegisteredStudents> createState() => _RegisteredStudentsState();
// }
//
// class _RegisteredStudentsState extends State<RegisteredStudents> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     fetchStudents();
//   }
//
//   var studentData = [];
//
//   Future<void> fetchStudents() async {
//     String url = "http://10.0.2.2/flutter_student_info/fetch_records.php";
//     // String url = "http://localhost/flutter_student_info/fetch_records.php";
//
//     var response = await http.get(Uri.parse(url));
//
//     setState(() {
//       studentData = jsonDecode(response.body);
//     });
//   }
//
//   // Future<void> deleteStudents(String id) async{
//   //   String url = "http://10.0.2.2/flutter_student_info/delete_records.php";
//   //
//   //   var response = await http.post(Uri.parse(url), body:
//   //   {
//   //     "id" : id,
//   //   });
//   //
//   //   var res = jsonDecode(response.body);
//   //
//   //   if(res['success']==  'true'){
//   //     print("Record Deleted");
//   //
//   //   }
//   // }
//
//   Future<void> deleteStudent(String id) async {
//     String url = "http://10.0.2.2/flutter_student_info/delete_record.php";
//
//     var response = await http.post(Uri.parse(url), body: {"id": id});
//
//     var res = jsonDecode(response.body);
//
//     if (res["success"] == "true") {
//       print("Record Deleted");
//       fetchStudents();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         //floatingActionButton :FloatingActionButton(onPressed: (){}),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.black,
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => AddStudent()));
//           },
//           child: Icon(
//             Icons.add,
//             color: Colors.deepOrange,
//           ),
//         ),
//         appBar: AppBar(
//           title: Text(
//             "Records of Students",
//             style: TextStyle(color: Colors.white),
//           ),
//           iconTheme: IconThemeData(
//             color: Colors.white, // Change this color to your desired color
//           ),
//
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(50),
//           child: Container(
//             color: Colors.black,
//             child: Row(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
//                   },
//                   icon: Icon(
//                     Icons.home,
//                     color: Colors.white,
//                   ),
//                   tooltip: 'Home',
//                 ),
//                 Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.search, color: Colors.white),
//                   tooltip: 'Search',
//                 ),
//                 Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.notifications, color: Colors.white),
//                   tooltip: 'Notification',
//                 ),
//                 Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.settings, color: Colors.white),
//                   tooltip: 'Setting',
//                 ),Spacer(),
//                 IconButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Home()));
//                   },
//                   icon:  Icon(
//                     Icons.login_rounded,
//                     color: Colors.deepOrange,
//                   ),
//                   tooltip: 'LogIn Page',
//                 ),
//
//               ],
//             ),
//           ),
//         ),
//         ),
//          body:
//       // ListView.builder(
//         //   itemCount: studentData.length,
//         //   itemBuilder: (context, index) => Card(
//         //     child: ListTile(
//         //       leading: Text(studentData[index]['std_id']),
//         //       title: Text(studentData[index]['stu_name']),
//         //       subtitle: Column(
//         //         children: [
//         //           Text("Class: "+studentData[index]['stu_class']),
//         //           Text("Roll-No: "+studentData[index]['stu_rollno']),
//         //           Text("Phone: "+studentData[index]['stu_phone']),
//         //           Text("Email: "+studentData[index]['stu_email']),
//         //           Text("Password: "+studentData[index]['stu_pass']),
//         //
//         //         ],
//         //       ),
//         //       trailing: IconButton(
//         //         onPressed: () {
//         //           deleteStudent(studentData[index]['std_id']);
//         //         },
//         //         icon: Icon(Icons.delete),
//         //       ),
//         //     ),
//         //   ),
//         // )
//
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//
//            child: DataTable(
//             columns: [
//               DataColumn(label: Text('ID')),
//               DataColumn(label: Text('Name')),
//               DataColumn(label: Text('Class')),
//               DataColumn(label: Text('Roll No')),
//               DataColumn(label: Text('Phone')),
//               DataColumn(label: Text('Email')),
//               DataColumn(label: Text('Password')),
//               DataColumn(label: Text('Delete'))
//             ],
//             rows: studentData.map((student) => DataRow(
//               cells: [
//                 DataCell(Text(student['std_id'].toString())),
//                 DataCell(Text(student['stu_name'])),
//                 DataCell(Text(student['stu_class'])),
//                 DataCell(Text(student['stu_rollno'])),
//                 DataCell(Text(student['stu_phone'])),
//                 DataCell(Text(student['stu_email'])),
//                 DataCell(Text(student['stu_pass'])),
//                 // DataCell(IconButton(onPressed: (){
//                 //   deleteStudents(student['id']);
//                 //   fetchStudents();
//                 // }, icon: Icon(Icons.delete))),
//                 DataCell(IconButton(
//                   onPressed: () {
//                     deleteStudent('std_id');
//                   },
//                   icon: Icon(Icons.delete),
//                 ))
//
//               ],
//             )).toList(),
//           ),
//
//         ),
//         );
//   }
// }


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


// Added import statement

class RegisteredStudents extends StatefulWidget {
  // const RegisteredStudents({super.key});
  const RegisteredStudents({Key? key});// Highlighted line

  @override
  State<RegisteredStudents> createState() => _RegisteredStudentsState();
}

class _RegisteredStudentsState extends State<RegisteredStudents> {

  // Set<int> availableIds = {};

  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  var studentData = [];

  Future<void> fetchStudents() async {
    String url = "http://10.0.2.2/flutter_student_info/fetch_records.php";
    var response = await http.get(Uri.parse(url));

    setState(() {
      studentData = jsonDecode(response.body);
      // for (var student in studentData) {
      //   availableIds.add(student['std_id']);
      // }
    });
  }

  Future<void> deleteStudent(String id) async {
    String url = "http://10.0.2.2/flutter_student_info/delete_record.php";
    var response = await http.post(Uri.parse(url), body: {"id": id});
    var res = jsonDecode(response.body);

    if (res["success"] == "true") {
      print("Record Deleted");
      // availableIds.add(int.parse(id));
      // int deletedId = int.parse(id);

      // setState(() {
      //   studentData.removeWhere((student) => student['std_id'] == deletedId);
      //   for (var student in studentData) {
      //     if (student['std_id'] > deletedId) {
      //       student['std_id'] -= 1;
      //     }
      //   }
      //
      // });

      setState(() {
        studentData.removeWhere((student) => student['std_id'] == id);
        for (var student in studentData) {
          if (student['std_id'] > id) {
            student['std_id'] -= 1;
          }
        }
      });

      fetchStudents();
    }
  }
  //
  // int getAvailableId() {
  //   if (availableIds.isEmpty) {
  //     // If no IDs are available, generate a new one
  //     return studentData.length + 1;
  //   } else {
  //     // Get an ID from the availableIds set
  //     return availableIds.first;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => AddStudent()));
        },
        child: Icon(
          Icons.add,
          color: Colors.deepOrange,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Records of Students",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Change this color to your desired color
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            color: Colors.black,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                  },
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  tooltip: 'Home',
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.white),
                  tooltip: 'Search',
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: Colors.white),
                  tooltip: 'Notification',
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings, color: Colors.white),
                  tooltip: 'Setting',
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon:  Icon(
                    Icons.logout,
                    color: Colors.deepOrange,
                  ),
                  tooltip: 'LogIn Page',
                ),

              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(

            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Class')),
              DataColumn(label: Text('Roll No')),
              DataColumn(label: Text('Phone')),
              DataColumn(label: Text('Email')),
              // DataColumn(label: Text('Password')),
              DataColumn(label: Text('Delete')),
              DataColumn(label: Text('Edit')),
            ],
            rows: studentData.map((student) => DataRow(
              cells: [
                DataCell(Text(student['std_id'].toString())),
                DataCell(Text(student['stu_name'])),
                DataCell(Text(student['stu_class'])),
                DataCell(Text(student['stu_rollno'])),
                DataCell(Text(student['stu_phone'])),
                DataCell(Text(student['stu_email'])),
                // DataCell(Text(student['stu_pass'])),
                DataCell(IconButton(
                  onPressed: () {
                    deleteStudent(student['std_id'].toString());
                    fetchStudents();
                  },
                  icon: Icon(Icons.delete),
                )),
                DataCell(IconButton(onPressed: (){
                  // EditPage();
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> EditPage()));

                }, icon: Icon(Icons.edit)))
              ],
            )).toList(),
          ),
        ),
      ),
    );
  }
}





