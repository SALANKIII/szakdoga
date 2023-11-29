import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:osszevonas/views/home_view.dart';

class LoginViewController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();

  void bejelentkezes() {
    if (email.text != "" && pwd.text != "") {
      Get.to(HomeView());
    } else if (email.text == "") {
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg az emailed"),
        actions: [
          CupertinoDialogAction(
            child: Text("Vissza"),
            onPressed: () {
              Get.back();
            },
          )
        ],
      ));
    } else {
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg a jelszavad"),
        actions: [
          CupertinoDialogAction(
            child: Text("Vissza"),
            onPressed: () {
              Get.back();
            },
          )
        ],
      ));
    }
  }
}
