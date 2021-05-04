import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrincipalPage extends StatelessWidget {
  //final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Principal Network"),
        actions: <Widget>[
          Builder(builder: (BuilContext context) {
            return FlatButton(
                child: const Text("Sign Out"),
                textColor: Theme.of(context).buttonColor,
                onPressed: () async {
                  //controller.signOut();
                });
          })
        ],
      ),
    );
  }
}
