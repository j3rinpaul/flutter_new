 import 'package:flutter/material.dart';
/*
  main function{
    runApp(<appname>);
  }
  appname inheriting statelesswidget{  //the main structure of the app
    that returns material ui{
      theme:{}
      home:{}
    }
  }
  a seperate class for homescreen{ //the strucpages defined in the main stucture
    in this return scafold and the rest of items
  }

  in flutter the running app is declared as stateless because it doesnot change on data updation
  a each page need to be declared as a class

*/

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue.shade600,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Jerin Paul",
                style: TextStyle(color: Colors.grey, fontSize: 60),
              )
            ],
          ),
        ));
  }
}
