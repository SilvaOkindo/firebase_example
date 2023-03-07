import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserDao with ChangeNotifier {
  final auth = FirebaseAuth.instance;
  // helper functions

  bool isLoggedIn() {
    return auth.currentUser != null;
  }

  String? userId() {
    return auth.currentUser?.uid;
  }

  String? userEmail() {
    return auth.currentUser?.email;
  }

  // signing up

  Future<String?> signup(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      notifyListeners();
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email');
      }
      return e.message;
    } catch (e) {
      log(e.toString());
      return e.toString();
    }
  }

  // sign in

  Future<String?> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      notifyListeners();
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email');
      }
      return e.message;
    } catch (e) {
      log(e.toString());
      return e.toString();
    }
  }

  void logout() async {
    await auth.signOut();
    notifyListeners();
  }
}
