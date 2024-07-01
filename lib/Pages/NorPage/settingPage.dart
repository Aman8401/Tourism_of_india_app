import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/NorPage/saveData/userInfoPage.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.black, child: Text("Setting")),
        centerTitle: true,
        titleSpacing: 2,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children:  [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.navigate_next_outlined),
            ),
            title: Text("Your Account"),
            onTap: (){
              Get.to(UserInfoPage());
            },
          ),
          ExpansionTile(
            title: Text('Language Preference'),
            children: <Widget>[
              ListTile(
                title: Text('Hindi'),
                onTap: () {
                  Get.updateLocale(Locale('hi'));
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('English'),
                onTap: () {
                  Get.updateLocale(Locale('en'));
                },
              ),
              ListTile(
                title: Text('Tamil'),
                onTap: () {
                  Get.updateLocale(Locale('ta'));                },
              ),
              ListTile(
                title: Text('Urdu'),
                onTap: () {
                  Get.updateLocale(Locale('ur'));
                },
              ),
            ],
          ),
          // Second group with ExpansionTile
          ExpansionTile(
            title: Text('Notification Preferences'),
            children: <Widget>[
              ListTile(
                title: Text('Element 2.1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Element 2.2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Element 2.3'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Element 2.4'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ExpansionTile(title: Text("Location Services")),
          ExpansionTile(title: Text("Theme Selection")),
          ExpansionTile(title: Text("Privacy Settings")),
          ExpansionTile(title: Text("Account Management")),
          ExpansionTile(title: Text("Feedback and Support")),
          ExpansionTile(title: Text("About Section"))
        ],
      )
    );
  }
}
