import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osszevonas/controllers/regist_form_view_controller.dart';
import 'package:osszevonas/views/login_view.dart';

class RegistFormView extends StatelessWidget {
  RegistFormViewController controller = Get.put(RegistFormViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistFormViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            backgroundColor: Colors.grey.shade100,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black54,
              child: Icon(Icons.navigate_next_outlined),
              onPressed: () {
                controller.regist();
              },
            ),
            appBar: AppBar(
              title: Center(child: Text("Regisztráció")),
              backgroundColor: Colors.black54,
            ),
            
            body: SingleChildScrollView(
              
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: TextField(
                      controller: controller.lastname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Vezetéknév"),
                        hintText: "Add meg a vezetékneved",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: controller.firstname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Keresztnév"),
                        hintText: "Add meg a keresztneved",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: controller.email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email"),
                        hintText: "Add meg az emailed",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      controller: controller.pwd,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Jelszó"),
                        hintText: "Add meg a jelszavad",
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text(
                    "Add meg a születési dátumod",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    controller.birthDate.toString().split(' ')[0],
                    style: TextStyle(fontSize: 25),
                  ),
                  CupertinoButton(
                    color: Colors.black54,
                    child: Text("Dátum megadása"),
                    onPressed: () {
                      controller.showDatePicker();
                    },
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text(
                    "Neme",
                    style: TextStyle(fontSize: 25),
                  ),
                  FlutGroupedButtons(
                    activeColor: Colors.black54,
                    isRadio: true,
                    data: [
                      "Nő",
                      "Férfi",
                    ],
                    onChanged: (p0) {
                      if (p0 != null) {
                        controller.selectedGender = p0.toString();
                      } else {
                        controller.selectedGender = "";
                      }
                    },
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 60),
                    child: CupertinoButton(
                      
                      child: Text("Már van fiókod?", style: TextStyle(color: Colors.black54),),
                      onPressed: () {
                        Get.to(LoginView());
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
