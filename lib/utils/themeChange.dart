import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChangeThemePage extends StatelessWidget {
  const ChangeThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController());
    return Obx(() => Switch(value: controller.isDarkTheme.value, onChanged: (s){controller.changeTheme();}));
  }
}

class ThemeController extends GetxController{

  RxBool isDarkTheme = false.obs;
  void changeTheme(){
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeTheme(
      isDarkTheme.value ? ThemeData.dark() : ThemeData.light(),
    );

  }
}