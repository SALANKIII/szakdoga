import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osszevonas/views/home_view.dart';

class RegistFormViewController extends GetxController {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();

  DateTime birthDate = DateTime.now();

  String selectedGender = "";

  void showDatePicker() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        height: 250,
        child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          mode: CupertinoDatePickerMode.date,
          dateOrder: DatePickerDateOrder.ymd,
          use24hFormat: true,
          onDateTimeChanged: (date) {
            birthDate = date;
            update();
          },
        ),
      ),
    );
  }
  void regist(){
    if(lastname.text != "" && firstname.text != "" && email.text != "" && pwd.text != ""){
      Get.to(HomeView());
    } else if(lastname.text == ""){
      Get.dialog(CupertinoAlertDialog(
            title: Text("Hiba"),
            content: Text("Nem adtad meg a vezetékneved"),
            actions: [
              CupertinoDialogAction(
                child: Text("Vissza"),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ));
    } else if(firstname.text == ""){
      Get.dialog(CupertinoAlertDialog(
            title: Text("Hiba"),
            content: Text("Nem adtad meg a keresztneved"),
            actions: [
              CupertinoDialogAction(
                child: Text("ok"),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ));
    } else if(email.text == "") {
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
