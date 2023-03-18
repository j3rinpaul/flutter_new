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
          child: DispalyText(textValue: _counter.toString()),
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

//when we changed the text into a stateless widget as the whole page is being reloaded
//the constructer is called each time and the value inside the stateless page is being changed
class DispalyText extends StatelessWidget {
  final String textValue;
//this widget is being created again and again as the stateful screen changes
  const DispalyText({super.key, required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Text(textValue);
  }
}
