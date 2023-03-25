import 'package:flutter/material.dart';


class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Image.asset("assets/images/images.jpg"),
      )),
    );
  }
}