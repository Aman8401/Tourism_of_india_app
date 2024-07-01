import 'package:flutter/material.dart';

class StateTourismLinkPage extends StatelessWidget {
   StateTourismLinkPage({super.key});

  final List<StateTourismInfo> _states = [
  StateTourismInfo(name: "Andhra Pradesh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Arunachal Pradesh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Assam", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Bihar", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Chhattisgarh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Goa", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Gujarat", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Haryana", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Himachal Pradesh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Jammu and Kashmir", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Jharkhand", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Karnataka", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Kerala", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Ladakh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Madhya Pradesh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Maharashtra", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Manipur", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Meghalaya", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Mizoram", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Nagaland", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Odisha", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Puducherry", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Punjab", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Rajasthan", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Sikkim", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Tamil Nadu", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Telangana", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Tripura", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Uttar Pradesh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Uttarakhand", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "West Bengal", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Andaman and Nicobar Islands", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Chandigarh", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Dadra and Nagar Haveli", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Daman and Diu", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Delhi", icon: "assets/images/indianLogo.png"),
  StateTourismInfo(name: "Lakshadweep", icon: "assets/images/indianLogo.png")

   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All State Tourism's", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.black),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _states.length,
        itemBuilder: (context, index) {
          final state = _states[index];
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.teal,
              child: ListTile(
                leading: Image.asset(state.icon),
                title: Text(state.name),
                onTap: () {
                  print("Clicked on ${state.name}");
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class StateTourismInfo {
  final String name ;
  final String icon ;
  StateTourismInfo({required this.name, required this.icon});
}