import 'package:chat_app/app/login/view/widgets/widets.dart';
import 'package:chat_app/app/utities/color/colors.dart';
import 'package:chat_app/app/utities/font/font.dart';
import 'package:chat_app/app/utities/sizedbox.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Chit Chat', style: poppins(fsize: 35)),
              Text(
                'Login and start chatting',
                style: roboto(fsize: 14),
              ),
              kSizedbox20,
              Image.asset('assets/messengerLogin.png'),
              TextFormField(
                  decoration: textInputDEcoratiion.copyWith(
                      labelText: 'Email',
                      prefix: const Icon(
                        Icons.alternate_email,
                        color: appcolor,
                      ))),
                      kSizedbox20,
              TextFormField(
                obscureText: true,
                  decoration: textInputDEcoratiion.copyWith(
                      labelText: 'Password',
                      prefix: const Icon(
                        Icons.lock,
                        color: appcolor,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
