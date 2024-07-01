import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerBar extends StatelessWidget {
  const NavigationDrawerBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer header
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple.shade900,
            ),
            child: const Text(
              'Setting',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // First group with ExpansionTile
          ExpansionTile(
            title: Text('Language'),
            children: <Widget>[
              ListTile(
                title: Text('Hindi'),
                onTap: () {
                  Get.updateLocale(Locale('hi'));
                },
              ),
              ListTile(
                title:  Text('English'),
                onTap: () {
                  Get.updateLocale(Locale('en'));
                },
              ),
              ListTile(
                title:  Text('Tamil'),
                onTap: () {
                  Get.updateLocale(Locale('ta'));
                },
              ),
              ListTile(
                title:  Text('Urdu'),
                onTap: () {
                  Get.updateLocale(Locale('ur'));
                },
              ),


            ],
          ),
          // Second group with ExpansionTile
          ExpansionTile(
            title: Text('Group 2'),
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
        ],
      ),
    );
  }
}