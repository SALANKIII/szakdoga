import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osszevonas/views/bmi_view.dart';
import 'package:osszevonas/views/calendar_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Center(child: Text("Kezdőlap")),
        backgroundColor: Colors.black54,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Center(
                  child: Text(
                'Menü',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
            ListTile(
              title: Text(
                'BMI',
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(CupertinoIcons.chart_bar_square_fill),
              onTap: () {
                Get.to(BMICalculator());
              },
            ),
            Divider(
              height: 30,
              color: Colors.black54,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Naptár',
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(CupertinoIcons.calendar,),
              onTap: () {
                Get.to(CalendarView());
              },
            ),
            Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
            ListTile(
              title: Text(
                'Edzésterv',
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(CupertinoIcons.text_justify),
              onTap: () {
                Get.to(CalendarView());
              },
            ),
            Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
            
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
    );
  }
}
