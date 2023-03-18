import 'package:flutter/material.dart';
import 'package:textfield/screen_home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: HomeScreen(),
    );
  }
}
