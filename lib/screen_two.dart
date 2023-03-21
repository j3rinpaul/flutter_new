import 'package:flutter/material.dart';

class Screentwo extends StatelessWidget {
  final name; //to change the ui according to the data recieved as in youtube

  const Screentwo({super.key, required this.name});
  //the name is a required parameter
  //the name is used in the ui according to input
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Return from $name"))
          ],
        ),
      )),
    );
  }
}
