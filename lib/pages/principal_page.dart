import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:loginflutter/controllers/login_controller.dart';

class PrincipalPage extends StatelessWidget {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Principal Network"),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            // ignore: deprecated_member_use
            return FlatButton(
                child: const Text("Sign Out"),
                textColor: Theme.of(context).buttonColor,
                onPressed: () async {
                  controller.signOut();
                });
          })
        ],
      ),
      body: Center(
          child: Text("Principal Page",
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))),
    );
  }
}
