import 'package:flutter/material.dart';
import 'package:textfield/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    gotoLogin();
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
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ScreenLogin()));
  }
}
