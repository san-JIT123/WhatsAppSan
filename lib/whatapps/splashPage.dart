import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatapp/whatapps/homePage.dart';
import 'package:whatapp/whatapps/logingPage.dart';

class SplashPageW extends StatefulWidget {
  @override
  State<SplashPageW> createState() => _SplashPageWState();
}

class _SplashPageWState extends State<SplashPageW> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool check = prefs.getBool(LoginPageW.LOGINGKEY) ?? false;

      Widget NavigatorTo = LoginPageW();

      if (check) {
        NavigatorTo = HomePageW();
      }

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => NavigatorTo,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/whatapp/logo_whatapp.png'))),
        ),
      ),
    );
  }
}
