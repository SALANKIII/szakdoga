import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osszevonas/views/regist_view.dart';

class GetStartedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Center(
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterLogo(size: 48),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Üdv az appunkba!',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Salánki Zsolt, Szilágyi Zsolt',
                            style: Theme.of(context).textTheme.titleLarge),
                      ),
                          
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 30),
                        child: CupertinoButton(
                            color: Colors.black54,
                            child: Text("Kezdjük!"),
                            onPressed: () {
                              Get.to(RegistFormView());
                            }),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
