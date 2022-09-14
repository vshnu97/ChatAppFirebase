import 'package:chat_app/app/home/view/home.dart';
import 'package:chat_app/app/login/view/screen_login.dart';
import 'package:chat_app/app/login/view_model/auth.dart';
import 'package:chat_app/app/routes/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider() {
    Future.delayed(const Duration(seconds: 3), (() {
      checkSignedIn();
    }));
  }

  void checkSignedIn() async {
    final authProvider = AuthProvider(
      firebaseAuth: FirebaseAuth.instance,
      firebaseFirestore: FirebaseFirestore.instance,
      googleSignIn: GoogleSignIn(),
    );
    bool isLoggedIn = await authProvider.isLoggedIn();
    if (isLoggedIn) {
      Routes.push(
        screen: const ScreenHome(),
      );
      return;
    } else {
      Routes.pushreplace(screen: const ScreenLogin());
    }
  }
}
