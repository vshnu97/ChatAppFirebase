import 'package:chat_app/app/home/view_model/home_provider.dart';
import 'package:chat_app/app/login/view_model/auth.dart';
import 'package:chat_app/app/routes/routes.dart';
import 'package:chat_app/app/splash/view/screen_splash.dart';
import 'package:chat_app/app/splash/view_model/splash_provider.dart';
import 'package:chat_app/app/utities/color/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences pref = await SharedPreferences.getInstance();
  runApp(MyApp(
    pref: pref,
  ));
}

class MyApp extends StatelessWidget {
  final SharedPreferences pref;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  MyApp({Key? key, required this.pref}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
            create: ((context) => HomeProvider())),
        ChangeNotifierProvider<SplashProvider>(
            create: ((context) => SplashProvider())),
        ChangeNotifierProvider<AuthProvider>(
            create: ((context) => AuthProvider(
                  firebaseFirestore: firebaseFirestore,
                  firebaseAuth: FirebaseAuth.instance,
                  googleSignIn: GoogleSignIn(),
                ))),
      ],
      child: MaterialApp(
        navigatorKey: Routes.navigatorKey,
        theme: ThemeData(
            primaryColor: appcolor, scaffoldBackgroundColor: kWhiteColor),
        debugShowCheckedModeBanner: false,
        home: ScreenSplash(),
      ),
    );
  }
}
