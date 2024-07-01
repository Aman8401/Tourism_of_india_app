import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_of_india/Pages/NorPage/saveData/userInfoPage.dart';
import 'package:tourism_of_india/Pages/NorPage/MainHomePage.dart';
import 'package:tourism_of_india/Pages/NorPage/settingPage.dart';
import 'package:tourism_of_india/Pages/crud/CRUDHome.dart';
import 'package:tourism_of_india/utils/geoLocation.dart';
import 'package:tourism_of_india/utils/otherUtils/searchBar.dart';

class BottomBar extends StatelessWidget {


   BottomBar({super.key, });
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(bottom: 10),
      height: 30,
      color: Colors.indigo.shade900,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: IconButton(
                onPressed: () {
                  Get.to(MainHomePage());
                },
                icon: Icon(
                  size: 20.5,
                  Icons.home,
                  color: Colors.white,
                ),
                tooltip: 'Home',
              ),
            ),
            Spacer(),

              IconButton(
                onPressed: () {
                  // method to show the search bar
                  showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate()
                  );
                },
                icon: const Icon(Icons.search,color: Colors.white,),
              ),

            Spacer(),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications,size: 20.5, color: Colors.white),
                tooltip: 'Notification',
              ),
            ),
            Spacer(),
            Container(
              child: IconButton(
                onPressed: () {
                  Get.to(CRUDHome());
                },
                icon: Icon(Icons.add_location_alt,size: 20.5, color: Colors.white),
                tooltip: 'Notification',
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Get.to(SettingPage());
              },
              icon: Icon(Icons.settings,size: 20.5, color: Colors.white),
              tooltip: 'Setting',
            ),Spacer(),
            IconButton(
              onPressed: () {

                Get.to(UserInfoPage());
              },

              icon:  Icon(
                Icons.person_2,
                color: Colors.deepOrange,
                size: 22,
              ),
              tooltip: 'LogIn Page',
            ),

          ],
        ),
      ),
    );

  }
}
