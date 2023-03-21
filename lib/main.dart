import 'package:flutter/material.dart';
import 'package:textfield/screen_one.dart';
import 'package:textfield/screen_two.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      //by setting the routes we can reduce the routing code to one line
      // we declare the routes in the main file and use pushNamed funtion to push into the named route

      routes: { //routes is a class that is just like the hashmap
        'screen_1': (ctx) { //name of screen as key: a context function that returns a screen
          return ScreenOne();
        },
        'screen_2': (context) {
          return Screentwo();
        }
      },
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOne();
  }
}
