import 'package:chat_app/app/splash/view_model/splash_provider.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  ScreenSplash({Key? key}) : super(key: key);
  SplashProvider object = SplashProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/talkin.jpg',
              width: 300,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
