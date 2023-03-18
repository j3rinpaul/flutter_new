import 'package:flutter/material.dart';

//stateful for widgets that changes

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          "Counter App",
          style: TextStyle(fontStyle: FontStyle.italic),
        )),
      ),
      body: Center(
        child: Container(
          child: Text(_counter.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter += 1;
          });
          print("Counter Clicked" + _counter.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
