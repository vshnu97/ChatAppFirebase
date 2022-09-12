import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier {
  // static String userLoggedKey = 'LOGGEDIN';
  // static String userNameKey = 'NAMEKEY';
  // static String userEmailKey = 'EMAILKEY';
  // bool isSignedIn =false;

  // HomeProvider() {
  //   getUserLoggedInStatus();
  // }

  // getUserLoggedInStatus() async {
  //   await userLogedIn().then((value){
  //     if(value!=null){
  //       isSignedIn = value;
  //     }

  //   });
  // }

  // static Future<bool?> userLogedIn() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   return pref.getBool(userLoggedKey);
  // }
}
