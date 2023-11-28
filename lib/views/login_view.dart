import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osszevonas/controllers/login_view_controller.dart';

class LoginView extends StatelessWidget {
  LoginViewController controller = Get.put(LoginViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Center(child: Text("Bejelentkezés")),
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
            SizedBox(height: 30,),
            CupertinoButton(
              color: Colors.black54,
                child: Text("Bejelentkezés"),
                onPressed: () {
                  controller.bejelentkezes();
                })
          ],
        ),
      ),
    );
  }
}
