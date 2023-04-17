import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:textfield/screens/home.dart';
import 'package:textfield/screens/login.dart';

import '../main.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.asset("assets/images/images.jpg"),
      )),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ScreenLogin()));
  }

  Future<void> checkLogin() async {
    final sharedprefs =
        await SharedPreferences.getInstance(); //getting the shared preferences
    final islogged = sharedprefs
        .getBool(SAVE_KEY); //checking whether the save_key is logged in or nor
    //ie the true or false is returned to the save_key and the save_key value is stored into islogged
    if (islogged == null || islogged == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    }
  }
}
