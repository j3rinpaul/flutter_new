import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Screentwo extends StatelessWidget {
  const Screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen 2"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Return"))
          ],
        ),
      )),
    );
  }
}
