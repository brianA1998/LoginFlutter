import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Example code of how to sign in with email and password.
  Future<void> signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user;

      Get.snackbar('Hola', ' su ingreso ha sido exitoso');
      print("Ingreso bien");
      Future.delayed(Duration(seconds: 2), () {
        Get.toNamed("/principal_page");
      });
    } catch (e) {
      Get.snackbar('Fallo', 'No puede ingresar, revise',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Example code for sign out.
  Future<void> _signOut() async {
    await _auth.signOut();
  }

  void signOut() async {
    final User user = await _auth.currentUser;
    if (user == null) {
      Get.snackbar('Out', 'No one has signed in',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    _signOut();
    final String uid = user.uid;
    Get.snackbar('Out', uid + 'has successfully signed out',
        snackPosition: SnackPosition.BOTTOM);
    Get.toNamed("/home");
  }

  //Example code of how to sign in with Google.
  Future<void> signInWithGoogle() async {
    try {
      UserCredential userCredential;

      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      userCredential = await _auth.signInWithCredential(googleAuthCredential);

      final user = userCredential.user;
      Get.snackbar('Hola', 'Sign In ${user.uid} with Google');
      print('Ingreso bien');
      Future.delayed(Duration(seconds: 2), () {
        Get.toNamed("/foodpage");
      });
    } catch (e) {
      print(e);
      Get.snackbar('Fallo', 'Failed to sign in with Google : $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
