import 'package:flutter/material.dart';
import 'package:textfield/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MultiScreen - Screen 1"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MultiScreen"),

            ElevatedButton(
                onPressed: () {
                  //navigator is a stack and the home page is initally pushed into the stack
                  //we push the second page on top of the stack
                  Navigator.of(context).push(
                    //as we are using the material ui we use materialpageroute
                    //if it was ios then the ios route will be used
                    MaterialPageRoute(builder: (ctx) {
                      return Screentwo();
                  })
                );
                },

                child: Text("Screen Two"))
          ],
        ),
      )),
    );
  }
}
