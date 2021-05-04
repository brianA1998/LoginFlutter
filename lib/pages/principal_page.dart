import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

class PrincipalPage extends StatelessWidget {
  //final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Principal Network"),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return FlatButton(
                child: const Text("Sign Out"),
                textColor: Theme.of(context).buttonColor,
                onPressed: () async {
                  //controller.signOut();
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
