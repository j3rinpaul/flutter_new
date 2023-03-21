import 'package:flutter/material.dart';

class Screentwo extends StatelessWidget {
  const Screentwo({super.key});
 
  //this app checks whether the creditials are loaded or not
  //if loaded then the login screen willnot appear 
  //else the login appears

  //working of normal apps that require login

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Shared Preferences Worked")
          ],
        ),
      )),
    );
  }
}
